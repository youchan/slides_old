class Hyaslide::Page0 < Hyaslide::PageBase
  def header
    h1(nil, "Isomorpihic web programming in Ruby")
  end

  def content
    [].tap do |children|
      children << p({className:"author"}, "Yoh Osaki a.k.a @youchan")
      children << p({className:"icon"}, img({className: "", src: "./data/images/youchan.jpg"}))
    end
  end
end

class Hyaslide::Page1 < Hyaslide::PageBase
  def content
    [].tap do |children|
      children << h4(nil, "Press 's'")
    end
  end
end

class Hyaslide::Page2 < Hyaslide::PageBase
  def header
    h2(nil, "Isomorphic programming")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "node.js ?"),
                    li(nil, "I don't like javascript.")
      )
    end
  end
end

class Hyaslide::Page3 < Hyaslide::PageBase
  def header
    h2(nil, "Opal")
  end

  def content
    [].tap do |children|
    end
  end
end

class Hyaslide::Page4 < Hyaslide::PageBase
  def header
    h2(nil, "Hyalite")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "A virtual DOM implementation in Ruby (Opal)."),
                    li(nil, "RubyKaigi 2015")
      )
    end
  end
end

class Hyaslide::Page5 < Hyaslide::PageBase
  def header
    h2(nil, "Menilite")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "モデルのコードをサーバーサイド、クライアントサイドで共有"),
                    li(nil, "Object marshalling"),
                    li(nil, "Integration with ActiveRecord")
      )
    end
  end
end

class Hyaslide::Page6 < Hyaslide::PageBase
  def header
    h2(nil, "Model definition")
  end

  def content
    [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<span class="k">class</span> <span class="nc">Todo</span> <span class="o">&lt;</span> <span class="no">Menilite</span><span class="o">::</span><span class="no">Model</span>
    <span class="n">field</span> <span class="ss">:description</span>
<span class="k">end</span>
} } })
    end
  end
end

class Hyaslide::Page7 < Hyaslide::PageBase
  def header
    h2(nil, "Validation")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "クライアントサイドで出来ることはクライアントサイドでやりたい"),
                    li(nil, "APIとしてはサーバーサイドでも必ず実行されたい")
      )
    end
  end
end

class Hyaslide::Page8 < Hyaslide::PageBase
  def header
    h2(nil, "Object marshalling")
  end

  def content
    [].tap do |children|
    end
  end
end

class Hyaslide::Page9 < Hyaslide::PageBase
  def header
    h2(nil, "Action")
  end

  def content
    [].tap do |children|
    end
  end
end

class Hyaslide::Page10 < Hyaslide::PageBase
  def header
    h2(nil, "Controller")
  end

  def content
    [].tap do |children|
    end
  end
end

class Hyaslide::Page11 < Hyaslide::PageBase
  def header
    h2(nil, "Store")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "Memory Store"),
                    li(nil, "File Store"),
                    li(nil, "ActiveRecord Store")
      )
    end
  end
end

class Hyaslide::Page12 < Hyaslide::PageBase
  def content
    [].tap do |children|
      children << h4(nil, "Demo or Die")
      children << p(nil, "ライブコーディングします。")
    end
  end
end

class Hyaslide::Page13 < Hyaslide::PageBase
  def header
    h2(nil, "ActiveRecord")
  end

  def content
    [].tap do |children|
    end
  end
end

class Hyaslide::Page14 < Hyaslide::PageBase
  def header
    h2(nil, "なぜ独自のモデルを選んだのか？")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "例えば、Reactive RecordはActiveRecordのインタフェースをクライアントで使えるようにしている"),
                    li(nil, "クライアントとサーバーでAPIに求められるものが若干違う"),
                    li(nil, "ActiveRecordはDBに依存しすぎている")
      )
    end
  end
end

class Hyaslide::Page15 < Hyaslide::PageBase
  def header
    h2(nil, "GUID")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "ActiveRecordではidがDBの自動採番で振られるがクライアントからは使いにくい")
      )
    end
  end
end

class Hyaslide::Page16 < Hyaslide::PageBase
  def header
    h2(nil, "アクセス制御")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "クライアントからすべてのリソースにアクセスできてはならない")
      )
    end
  end
end

class Hyaslide::Page17 < Hyaslide::PageBase
  def header
    h2(nil, "Silica")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "総合的なアプリケーションプラットフォームとして育てていきたい"),
                    li(nil, "当面の目標としては、ActiveRecordのmigrationの自動生成")
      )
    end
  end
end

class Hyaslide::Page18 < Hyaslide::PageBase
  def header
    h2(nil, "まとめ")
  end

  def content
    [].tap do |children|
    end
  end
end

Hyaslide.page_count = 19
Hyaslide.title = "Isomorpihic web programming in Ruby"
