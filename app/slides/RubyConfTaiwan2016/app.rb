require 'slide'
require 'page_base'
require 'slides/RubyConfTaiwan2016/pages'

Hyaslide.slide_name = 'RubyConfTaiwan2016'

module App
  def self.render
    Hyalite.render(Hyalite.create_element(Hyaslide::Slide, nil), $document['.hyaslide'])
  end
end

$document.ready do
  $window.on(:resize) do
    App.render
  end

  App.render
end
