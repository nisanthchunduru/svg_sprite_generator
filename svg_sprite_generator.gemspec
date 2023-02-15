$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "svg_sprite_generator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name          = "svg_sprite_generator"
  s.version       = SvgSpriteGenerator::VERSION
  s.authors       = ["Nisanth Chunduru"]
  s.email         = ["nisanth074@gmail.com"]
  s.homepage      = "https://github.com/nisanthchunduru/svg_sprite_generator"
  s.summary       = "An SVG Sprite Generator"
  s.description   = "Generate an SVG sprite for any set of SVG icons/images"

  s.files = Dir["{lib}/**/*", "README.md"]

  s.add_dependency "nokogiri"

  s.add_development_dependency "pry"
end
