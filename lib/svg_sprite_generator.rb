require_relative "svg_sprite_generator/svg_sprite"

class SvgSpriteGenerator
  attr_reader :svg_paths

  def initialize
    @svg_paths = []
  end

  def add_svg(svg_path)
    svg_paths << svg_path
  end

  def generate
    svg_sprite = SvgSprite.new
    svg_paths.each do |svg_path|
      svg_source = File.read(svg_path)
      parsed_svg = Nokogiri::XML::Document.parse(svg_source)
      svg_element = parsed_svg.children.detect { |element| element.name == "svg" }

      svg_element.name = "symbol"
      id = File.basename(svg_path, ".svg")
      svg_sprite.add_symbol(id, svg_element)
    end
    svg_sprite.to_s
  end
end
