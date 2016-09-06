class Hyaslide::Page0 < Hyaslide::PageBase
  def header
    h1(nil, "コーヒー屋を支える技術")
  end

  def content
    [].tap do |children|
      children << p({className:"author"}, "株式会社ユビレジ 大崎 瑶(よう)")
      children << p({className:"icon"}, img({className: "", src: "./data/images/youchan.jpg"}))
    end
  end
end

class Hyaslide::Page1 < Hyaslide::PageBase
  def content
    [].tap do |children|
      children << p({className:"ubiregi"}, img({className: "", src: "./data/images/ubiregi.png"}))
    end
  end
end

class Hyaslide::Page2 < Hyaslide::PageBase
  def header
    h2(nil, "コーヒー屋")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "coffeeで検索 => 124件"),
                    li(nil, "cafeで検索 => 580件"),
                    li(nil, "coffee && cafe で検索 => 7件")
      )
      children << h4(nil, "124 + 580 - 7 = 697 件")
      children << p(nil, "※ login名、email、店名などに含まれるものを検索しています。")
    end
  end
end

class Hyaslide::Page3 < Hyaslide::PageBase
  def content
    [].tap do |children|
      children << p({className:"ubiregi-user"}, img({className: "", src: "./data/images/20thousand.png"}))
    end
  end
end

class Hyaslide::Page4 < Hyaslide::PageBase
  def content
    [].tap do |children|
      children << h4(nil, "697 / 20000 * 100 = 約3.5%")
    end
  end
end

class Hyaslide::Page5 < Hyaslide::PageBase
  def header
    h2(nil, "コーヒー屋さんにもマッチするユビレジ")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "おしゃれで場所をとらない"),
                  li(nil, "オフラインで使える(なるべくリアルタイム)"),
                  ul(nil,
                    li(nil, "会計データなどは同期モデル")
      ),
                    li(nil, "FlickOrder 連携"),
                    li(nil, "楽天ポイント連携")
      )
    end
  end
end

class Hyaslide::Page6 < Hyaslide::PageBase
  def header
    h2(nil, "コーヒー屋さんにもマッチするユビレジ")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, strong(nil, "おしゃれで場所をとらない")),
                  li(nil, "オフラインで使える(なるべくリアルタイム)"),
                  ul(nil,
                    li(nil, "会計データなどは同期モデル")
      ),
                    li(nil, "FlickOrder 連携"),
                    li(nil, "楽天ポイント連携")
      )
    end
  end
end

class Hyaslide::Page7 < Hyaslide::PageBase
  def content
    [].tap do |children|
      children << p({className:"mpop"}, img({className: "", src: "./data/images/mpop.png"}))
    end
  end
end

class Hyaslide::Page8 < Hyaslide::PageBase
  def header
    h2(nil, "コーヒー屋さんにもマッチするユビレジ")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "おしゃれで場所をとらない"),
                  li(nil, strong(nil, "オフラインで使える(なるべくリアルタイム)")),
                  ul(nil,
                    li(nil, strong(nil, "会計データなどは同期モデル"))
      ),
                    li(nil, "FlickOrder 連携"),
                    li(nil, "楽天ポイント連携")
      )
    end
  end
end

class Hyaslide::Page9 < Hyaslide::PageBase
  def header
    h2(nil, "コーヒー屋さんにもマッチするユビレジ")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "おしゃれで場所をとらない"),
                  li(nil, "オフラインで使える(なるべくリアルタイム)"),
                  ul(nil,
                    li(nil, "会計データなどは同期モデル")
      ),
                    li(nil, strong(nil, "FlickOrder 連携")),
                    li(nil, "楽天ポイント連携")
      )
    end
  end
end

class Hyaslide::Page10 < Hyaslide::PageBase
  def content
    [].tap do |children|
      children << p({className:"flickorder"}, img({className: "", src: "./data/images/flickorder.png"}))
    end
  end
end

class Hyaslide::Page11 < Hyaslide::PageBase
  def header
    h2(nil, "コーヒー屋さんにもマッチするユビレジ")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "おしゃれで場所をとらない"),
                  li(nil, "オフラインで使える(なるべくリアルタイム)"),
                  ul(nil,
                    li(nil, "会計データなどは同期モデル")
      ),
                    li(nil, "FlickOrder 連携"),
                    li(nil, strong(nil, "楽天ポイント連携"))
      )
    end
  end
end

class Hyaslide::Page12 < Hyaslide::PageBase
  def content
    [].tap do |children|
      children << p({className:"rpoint"}, img({className: "", src: "./data/images/rpoint.jpg"}))
    end
  end
end

class Hyaslide::Page13 < Hyaslide::PageBase
  def content
    [].tap do |children|
      children << p({className:"rpoint"}, img({className: "", src: "./data/images/rpoint.jpg"}))
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="ogijun"><p>ogijun氏も開発に参加！！！</p></div>

} } })
    end
  end
end

class Hyaslide::Page14 < Hyaslide::PageBase
  def content
    [].tap do |children|
      children << h4(nil, "どうやって開発しているのか")
    end
  end
end

class Hyaslide::Page15 < Hyaslide::PageBase
  def header
    h2(nil, "環境")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "Ruby on Rails"),
                    li(nil, "CoffeeScript => ES6"),
                    li(nil, "iOS (Objective-C、ちょっとSwift)"),
                    li(nil, "GitHub"),
                    li(nil, "heroku"),
                    li(nil, "Travis CI")
      )
    end
  end
end

class Hyaslide::Page16 < Hyaslide::PageBase
  def content
    [].tap do |children|
      children << h4(nil, "マージ即デプロイ")
      children << p({className:"coffee"}, img({className: "", src: "./data/images/coffee.jpg"}))
    end
  end
end

class Hyaslide::Page17 < Hyaslide::PageBase
  def header
    h2(nil, "プロセス")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                  li(nil, "スクラム(？)"),
                  ul(nil,
                    li(nil, "2週間のスプリント"),
                    li(nil, "アジャイルレトロスペクティブ")
      )
      )
      children << p({className:"taskboard"}, img({className: "", src: "./data/images/taskboard.jpg"}))
      children << p({className:"ajile"}, img({className: "", src: "./data/images/ajile.jpg"}))
    end
  end
end

class Hyaslide::Page18 < Hyaslide::PageBase
  def header
    h2(nil, "ロールプレイ")
  end

  def content
    [].tap do |children|
      children << p({className:"rollplay"}, img({className: "", src: "./data/images/rollplay.jpg"}))
    end
  end
end

class Hyaslide::Page19 < Hyaslide::PageBase
  def header
    h2(nil, "カモ鍋")
  end

  def content
    [].tap do |children|
      children << p({className:"kamo"}, img({className: "", src: "./data/images/kamo.jpg"}))
    end
  end
end

class Hyaslide::Page20 < Hyaslide::PageBase
  def content
    [].tap do |children|
      children << h4(nil, "コーヒー屋を支える技術を支える")
      children << h4(nil, "コーヒー好きのエンジニアを募集しています！")
    end
  end
end

class Hyaslide::Page21 < Hyaslide::PageBase
  def header
    h2(nil, "ユビレジではこんな人を募集しています。")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "Ruby on Rails エンジニア"),
                    li(nil, "QA エンジニア"),
                    li(nil, "iOS エンジニア")
      )
    end
  end
end

class Hyaslide::Page22 < Hyaslide::PageBase
  def content
    [].tap do |children|
      children << h4(nil, a({href: "https://ubiregi.com/ja/jobs", target: "_blank"}, "https://ubiregi.com/ja/jobs"))
      children << h4(nil, "Wantedlyで募集を準備中…")
    end
  end
end

Hyaslide.page_count = 23
Hyaslide.title = "コーヒー屋を支える技術"
