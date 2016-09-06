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
    h2(nil, "Who am I?")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "Yoh Osaki (@youchan)"),
                    li(nil, "Ubiregi inc."),
                    li(nil, "http://github.com/youchan/hyalite"),
                    li(nil, "\"Writing web application in Ruby\" RubyKaigi2015")
      )
    end
  end
end

class Hyaslide::Page3 < Hyaslide::PageBase
  def header
    h2(nil, "Retrospection of RubyKaigi2015")
  end

  def content
    [].tap do |children|
      children << p({className:"rubykaigi2015"}, img({className: "", src: "./data/images/rubykaigi2015.png"}))
    end
  end
end

class Hyaslide::Page4 < Hyaslide::PageBase
  def header
    h2(nil, "Opal")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "Web frontend programming in Ruby is good!")
      )
    end
  end
end

class Hyaslide::Page5 < Hyaslide::PageBase
  def header
    h2(nil, "Hyalite")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "React like virtual DOM implementation in Ruby.")
      )
    end
  end
end

class Hyaslide::Page6 < Hyaslide::PageBase
  def header
    h2(nil, "Isomorphic programming")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "node.js ?"),
                    li(nil, "I don't like javascript."),
                    li(nil, "We can write in Ruby both client side and server side!")
      )
    end
  end
end

class Hyaslide::Page7 < Hyaslide::PageBase
  def header
    h2(nil, "Menilite")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "Share the code for models the client-side and the server-side."),
                    li(nil, "Object marshalling"),
                    li(nil, "Integration with ActiveRecord")
      )
    end
  end
end

class Hyaslide::Page8 < Hyaslide::PageBase
  def header
    h2(nil, "Model definition")
  end

  def content
    [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5
6
7
8
9
10
11
12
13
14
15</pre></td><td class="code"><pre><span class="k">class</span> <span class="nc">User</span> <span class="o">&lt;</span> <span class="no">Menilite</span><span class="o">::</span><span class="no">Model</span>
  <span class="n">field</span> <span class="ss">:name</span>
  <span class="n">field</span> <span class="ss">:password</span>

  <span class="n">action</span> <span class="ss">:signup</span><span class="p">,</span> <span class="ss">on_create: </span><span class="kp">true</span> <span class="k">do</span> <span class="o">|</span><span class="n">password</span><span class="o">|</span>
    <span class="nb">self</span><span class="p">.</span><span class="nf">password</span> <span class="o">=</span>  <span class="no">BCrypt</span><span class="o">::</span><span class="no">Password</span><span class="p">.</span><span class="nf">create</span><span class="p">(</span><span class="n">password</span><span class="p">)</span>
    <span class="nb">self</span><span class="p">.</span><span class="nf">save</span>
  <span class="k">end</span>

  <span class="n">if_server</span> <span class="k">do</span>
    <span class="k">def</span> <span class="nf">auth</span><span class="p">(</span><span class="n">password</span><span class="p">)</span>
      <span class="no">BCrypt</span><span class="o">::</span><span class="no">Password</span><span class="p">.</span><span class="nf">new</span><span class="p">(</span><span class="nb">self</span><span class="p">.</span><span class="nf">password</span><span class="p">)</span> <span class="o">==</span> <span class="n">password</span>
    <span class="k">end</span>
  <span class="k">end</span>
<span class="k">end</span>
</pre></td></tr></tbody></table>
</div>
} } })
    end
  end
end

class Hyaslide::Page9 < Hyaslide::PageBase
  def header
    h2(nil, "Validation")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "Basically all validations needed in the server-side."),
                    li(nil, "Considering the responsiveness, client-side validation is preferred."),
                    li(nil, "We need both.")
      )
    end
  end
end

class Hyaslide::Page10 < Hyaslide::PageBase
  def header
    h2(nil, "Object marshalling")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "Automatically generating the API as CRUD."),
                    li(nil, "Proxy as calling the server action from the client-side method call")
      )
    end
  end
end

class Hyaslide::Page11 < Hyaslide::PageBase
  def header
    h2(nil, "Controller")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "There is the action like the model's action, but differences is usable in request context."),
                    li(nil, "Actions which is related to multiple models.")
      )
    end
  end
end

class Hyaslide::Page12 < Hyaslide::PageBase
  def header
    h2(nil, "Store")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "Memory Store"),
                    li(nil, "File Store (WIP)"),
                    li(nil, "Database Store (TBI)"),
                    li(nil, "ActiveRecord Store")
      )
    end
  end
end

class Hyaslide::Page13 < Hyaslide::PageBase
  def content
    [].tap do |children|
      children << h4(nil, "Demo or Die")
    end
  end
end

class Hyaslide::Page14 < Hyaslide::PageBase
  def header
    h2(nil, "Why do I chose the originally object model?")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "for example, ActiveRecord"),
                    li(nil, "Reactive Record has interface same as ActiveRecorde can use from client side."),
                    li(nil, "Requirements for API in the client side and server side is somewhat deferently."),
                    li(nil, "ActiveRecord is too depended on database.")
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
                    li(nil, "Sequential id which database generate automatically is unusable from the client side.")
      )
    end
  end
end

class Hyaslide::Page16 < Hyaslide::PageBase
  def header
    h2(nil, "Access controll")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "Not all resources is allowed access from the client.")
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
                    li(nil, "I going to Silica grow up Silica as totally platform for application."),
                    li(nil, "Immediate objective is feature of automatically generating migration for ActiveRecord.")
      )
    end
  end
end

class Hyaslide::Page18 < Hyaslide::PageBase
  def header
    h2(nil, "Conclusion")
  end

  def content
    [].tap do |children|
      children << ul(nil,
                    li(nil, "I introduced Menilite is the isomorphic programming framework."),
                    li(nil, "I show by live cooding, application is about how easy to build.")
      )
    end
  end
end

Hyaslide.page_count = 19
Hyaslide.title = "Isomorpihic web programming in Ruby"
