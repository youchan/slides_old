require 'slide'
require 'page_base'
require 'slides/coffee_lt_2016-08-03/pages'

Hyaslide.slide_name = 'coffee_lt_2016-08-03'

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
