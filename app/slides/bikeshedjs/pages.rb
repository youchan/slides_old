class Hyaslide::Page0 < Hyaslide::PageBase
def header
  h1(nil, "Bikeshedの議論は楽しいのでBikeshedでしましょうよ")
end

def content
  [].tap do |children|
      children << p({className:"author"}, "Yoh Osaki a.k.a @youchan")
      children << p({className:"icon"}, img({className: "", src: "assets/bikeshedjs/images/youchan.jpg"}))
  end
end
end

class Hyaslide::Page1 < Hyaslide::PageBase
def header
  h3(nil, "Bikeshedの議論は楽しいですか？")
end

def content
  [].tap do |children|
  end
end
end

class Hyaslide::Page2 < Hyaslide::PageBase
def header
  h3(nil, "わたしはわりと好きです。")
end

def content
  [].tap do |children|
  end
end
end

class Hyaslide::Page3 < Hyaslide::PageBase
def content
  [].tap do |children|
      children << h4(nil, "Vimが好きとか、")
      children << h4(nil, "Vimのここが素晴しいとか、")
      children << h4(nil, "Vim最強とか、")
      children << h4(nil, "Vim!Vim!Vim!")
  end
end
end

class Hyaslide::Page4 < Hyaslide::PageBase
def header
  h3(nil, "失礼しました…")
end

def content
  [].tap do |children|
  end
end
end

class Hyaslide::Page5 < Hyaslide::PageBase
def content
  [].tap do |children|
      children << h4(nil, "でもBikeshedの議論はBikeshedでしてほしいですよね？")
  end
end
end

class Hyaslide::Page6 < Hyaslide::PageBase
def header
  h2(nil, "Who?")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "よう"),
                    li(nil, "@youchan"),
                    li(nil, "株式会社ユビレジ(Railsエンジニア)")
      )
  end
end
end

class Hyaslide::Page7 < Hyaslide::PageBase
def content
  [].tap do |children|
      children << h4(nil, "ちなみにクオート文字はどれでもいいじゃん派です。")
  end
end
end

class Hyaslide::Page8 < Hyaslide::PageBase
def header
  h2(nil, "SPA")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "CoffeeScript => ES2015"),
                    li(nil, "Backbone.js => React + Redux")
      )
      children << p(nil, "ほかにもwebpackとかいろいろモダン化がすすんでいる")
  end
end
end

class Hyaslide::Page9 < Hyaslide::PageBase
def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "徐々に移行中"),
                    li(nil, "リファクタリングが頻繁に行われる"),
                    li(nil, "些細なStyleの修正のPRも投げこまれるようになる"),
                    li(nil, "githubのコメントでBikeshedの議論が盛んになる…")
      )
  end
end
end

class Hyaslide::Page10 < Hyaslide::PageBase
def header
  h2(nil, "突然のeslint")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "突然eslintを導入しようというPRが投げこまれる"),
                    li(nil, "当然、既存のコードはlintを通りません"),
                    li(nil, "eslintrcをめぐる議論でgithubのコメントが荒れる"),
                    li(nil, "主にそんなルールいらねーという話で…")
      )
  end
end
end

class Hyaslide::Page11 < Hyaslide::PageBase
def header
  h3(nil, "lintは何のために？")
end

def content
  [].tap do |children|
  end
end
end

class Hyaslide::Page12 < Hyaslide::PageBase
def content
  [].tap do |children|
      children << p(nil, "「そういうBikeshedの議論をなくすために規約で決めちゃうんだよ」")
  end
end
end

class Hyaslide::Page13 < Hyaslide::PageBase
def header
  h3(nil, "本当？!!!")
end

def content
  [].tap do |children|
  end
end
end

class Hyaslide::Page14 < Hyaslide::PageBase
def header
  h2(nil, "コードの自由")
end

def content
  [].tap do |children|
      children << h4(nil, "「自由ソフトウェア」のことではありません…")
  end
end
end

class Hyaslide::Page15 < Hyaslide::PageBase
def header
  h2(nil, "JavaからRubyへ")
end

def content
  [].tap do |children|
      children << h4(nil, img({className: "java-to-ruby", src: "assets/bikeshedjs/images/java_to_ruby.jpg"}))
  end
end
end

class Hyaslide::Page16 < Hyaslide::PageBase
def header
  h2(nil, "TMTOWTDI")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "There's More Than One Way To Do It;「やり方はいろいろある」"),
                    li(nil, "PerlからRubyに引き継がれていったプログラミングのモットー")
      )
  end
end
end

class Hyaslide::Page17 < Hyaslide::PageBase
def content
  [].tap do |children|
      children << p(nil, "いろんなやり方があるから、読みやすいようにいろいろ工夫する。")
      children << p(nil, "そういうところにコードを書く創造性があるのだと思います。")
  end
end
end

class Hyaslide::Page18 < Hyaslide::PageBase
def content
  [].tap do |children|
      children << h4(nil, "lintでコードの自由を縛るなんて…")
      children << h4(nil, "それにBikeshedの議論は楽しいしね！")
  end
end
end

class Hyaslide::Page19 < Hyaslide::PageBase
def header
  h3(nil, "Bikeshedの議論はBikeshedでしよう！")
end

def content
  [].tap do |children|
  end
end
end

class Hyaslide::Page20 < Hyaslide::PageBase
def header
  h2(nil, "弊社の場合")
end

def content
  [].tap do |children|
      children << h4(nil, img({className: "basecamp", src: "assets/bikeshedjs/images/basecamp.png"}))
      children << p(nil, "slackに自転車置き場をつくるのもよいでしょう。")
  end
end
end

class Hyaslide::Page21 < Hyaslide::PageBase
def header
  h2(nil, "まとめ")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "lintでは守れないコードの自由があります"),
                    li(nil, "他人のコードは広い心でみましょう"),
                    li(nil, "Bikeshedの議論はBikeshedで"),
                    li(nil, "でも、Bikeshedの議論は(ときに創造的で)楽しいですよね")
      )
  end
end
end

class Hyaslide::Page22 < Hyaslide::PageBase
def header
  h3(nil, "Bikeshed.jsいいですね。このようなすばらしい会を開いていただき本当にありがとうございます。")
end

def content
  [].tap do |children|
  end
end
end

Hyaslide.page_count = 23
Hyaslide.title = "Bikeshedの議論は楽しいのでBikeshedでしましょうよ"
