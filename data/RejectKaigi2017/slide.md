# RejectKaigi

%author: Yoh Osaki a.k.a @youchan

%icon: ![](youchan.jpg)

---

%huge: RejectKaigi

---

%huge: 何ぞ？

---

%full: ![](cfp.png)

### RubyKaigiでRejectKaigiというCFPがRejectされたのでRejectKaigiでトークします

---

%huge: 自己言及

### 自己言及というお題で3つ

---

%huge: RejectKaigi

## はじめてのRejectKaigi

#### [http://jp.rubyist.net/RubyKaigi2007/Log.html](http://jp.rubyist.net/RubyKaigi2007/Log.html)

---

%huge: 10周年

%tada: ![](tada.png)

### Ruby(というかプログラミング言語)の自己言及

---

%huge: Quine

## Quineとは？

%full: ![](quine.png)

### あなたの知らない超絶技巧プログラミングの世界

%book: ![](book.jpg)

---

%huge: やってみた

## Quineの基本形

```
eval s=%q(puts"eval s=%q(#{s})")
```

## 任意の形に整形

```
eval$s=%w(
  s=%(eval$s=%w(#{$s})*"");
  puts(s)
)*""
```

---

%huge: 自己言及

## Who am I?

* Yoh Osaki (@youchan)
* Ubiregi inc.
* http://github.com/youchan

## RubyKaigi

* "Writing web application in Ruby" RubyKaigi2015
* "Isomorphic web programming in Ruby" RubyKaigi2016
* "dRuby on Browser" RubyKaigi2017

%new: ![](new.png)

## "Writing web application in Ruby" RubyKaigi2015

* Opal(Ruby to JavaScript source code compiler)
* Virtual DOM implementation in Ruby: Hyalite
* [https://github.com/youchan/hyalite](https://github.com/youchan/hyalite)

## "Isomorphic web programming in Ruby" RubyKaigi2016

* Isomorphic web programming framework in Ruby: Menilite
* [https://github.com/youchan/menilite](https://github.com/youchan/menilite)

## "dRuby on Browser" RubyKaigi2017

%new2: ![](new.png)

### 乞うご期待ください

### おまけ

### このスライドは拙作のGibierというHyalite製のツールで作られています

---

%full: ![](blog.png)

[http://blog.youchan.org](http://blog.youchan.org)

### ご清聴ありがとうございました

