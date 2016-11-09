require 'slide'
require 'page_base'
require 'slides/RubyKaigi2016/pages'

Hyaslide.slide_name = 'RubyKaigi2016'

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
