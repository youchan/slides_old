# Opalのすすめ

%author: Yoh Osaki a.k.a @youchan

%icon: ![](youchan.jpg)

## Who am I ?

* Yoh Osaki (@youchan)
* Ubiregi inc.
* http://github.com/youchan/hyalite
* Asakusa.rb
* RubyKaigiとか

### Ruby方面から来ました

## 「Opalのすすめ」

#### [Opal Advent calender 2016](http://qiita.com/advent-calendar/2016/opal)

## アジェンダ

* Opalとは
* Rubyの強力な機能
* Opalを活かしたフレームワーク

## Opal

* Ruby => JavaScript トランスパイラ
* サーバーが添付されているのでopalだけでWebアプリケーションを作れる
    - nodeなどが必要ない
    - webpackとのインテグレーションなどもあるらしい
* Rubyのコアライブラリを同梱

## JavaScriptインテグレーション

* \`...\`で囲むとそのままJavaScriptのコードとして埋めこまれる
* ローカル変数はそのまま参照できるし、クラスのフィールドも`obj.$field`のような形で参照できる
* `Native`モジュールでラッパークラスが簡単につくれる
* `JS`モジュールからJavaScriptのコードを呼びだすことができる

```ruby
require 'js'
date = JS.new(`Date`)
puts date.JS.toISOString
```

## Why Opal?

## Ruby大好き💖💖💖

## Rubyの強力な機能

* Classベースのオブジェクト指向
* 組み込みライブラリ
* 強力なメタプログラミングサポート

## Classベースのオブジェクト指向

* 言語組み込みのMix-in機能(Module)
* オープンクラス(Prototypeベースのように柔軟)

## Mix-in(例えば、Enumerable)

```ruby
class Foo
  include Enumerable

  def each
    yield "one"
    yield "two"
    yield "three"
  end
end

Foo.new.map(&:capitalize) # => ["One", "Two", "Three"]

```

## 組み込みライブラリ

* Array,Hash,Range
    - Enumerableを継承している

## Array,Hash,Range

```ruby
# Array
[1] + [2, 3] #=> [1, 2, 3]
[1, 2, 3] - [1, 3] #=> [2]
[1, [2, 3]].flatten #=> [1, 2, 3]
a = [1, 2, 3]
a.map!(&:to_s)
a #=> ["1", "2", "3"]

# Hash
{a: 1, b: 2}.merge({a: 4, c: 3}) #=> {"a"=>4, "b"=>2, "c"=>3}
key_values = ["a", "b", "c"].zip([1, 2, 3]) #=> [["a", 1], ["b", 2], ["c", 3]]
Hash[key_values] #=> {"a"=>1, "b"=>2, "c"=>3}

# Range
(1..3).to_a #=> [1, 2, 3]
(1...3).to_a #=> [1, 2]
```

## 強力なメタプログラミングサポート

* オープンクラス、動的なメソッド定義
* ゴーストメソッド
* 言語内DSL
    - Rake, Vargrant, Chef, etc...

## オープンクラス、動的なメソッド定義

クラスベースであってもJavaScriptのように柔軟に動的なメソッド定義ができる


```ruby
# Open class
class Object
  def try
    yield if self
  end
end
# JS: Object.prototype.try = function(func) {...}

# Singleton class
obj = Object.new
obj.singleton_class.define_method(:foo) { 'foo' } # <=> define_singleton_method
obj.foo #=> "foo"
# JS: obj.foo = function() { return "foo" }
```

## ゴーストメソッド

ex: デリゲートメソッド

```ruby
class Delegate
  def initialize(receiver)
    @reciever = reciever
  end

  def method_missing(m, *args, &block)
    if @reciever.respond_to(m)
      @receiver.send(m, *args, &block)
    end
  end
end
```

### ここで紹介した機能はRubyの便利な機能のほんの一部です。Rubyの柔軟でやりたいことがストレートに表現できるところがすこしでも伝われば幸いです。

## Opalを活かしたフレームワーク

* Hyalite: ReactライクVirtual DOM
* Menilite: Isomorphic programming フレームワーク

## Hyalite

* Opalで実装されたReactライクなVirtual DOM
* このスライドアプリもHyaliteで作られています。

## Hyalite example

```ruby
require 'hyalite'
require 'browser/interval'

class ExampleView
  include Hyalite::Component

  state :count, 0

  def component_did_mount
    every(5) do
      @state.count += 1
    end
  end

  def render
    div({class: 'example'},
      h2(nil, @props[:title]),
      h3(nil, "count = #{@state.count}")
    )
  end
end
```

## Isomorphic programming

* 現状Rubyがサーバーサイドの言語としてあるていど地位を確立している。
* RubyでIsomorphic programming出来ることはメリットがある。

## Menilite

* RubyKaigi 2016, RubyConf Taiwan 2016: "Isomorphic web programming in Ruby"
* Modelの定義は1回だけでクライアントサイドとサーバーサイドでコードを共有
* サーバーのモデルをクライアントから透過的に扱う
* ActiveRecordインテグレーション

## Menilite example

```ruby
class User < Menilite::Model
  field :name
  field :password

  action :signup, on_create: true do |password|
    self.password =  BCrypt::Password.create(password)
    self.save
  end

  if_server do
    def auth(password)
      BCrypt::Password.new(self.password) == password
    end
  end
end
```

## まとめ

* OpalはRubyからJavaScriptへのトランスパイラです。JavaScriptとのインテグレーションも簡単にできます。
* Rubyの強力な機能について紹介しました。
* Opalの特性を活かしてIsomorphic programmingのフレームワークを作りました。

## ご清聴ありがとうございました。

このスライド  
[http://slides.youchan.org/JSerInfo6th ](http://slides.youchan.org/JSerInfo6th)  

Opalの日本語のコミュニティ  
[https://opalrb-jp-slack.herokuapp.com](https://opalrb-jp-slack.herokuapp.com)
