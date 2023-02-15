require "nokogiri"

class SvgSpriteGenerator
  class SvgSprite
    attr_reader :document

    def initialize
      @document = Nokogiri::XML::Document.parse(%Q(<svg style="display: none;"></svg>))
    end

    def add_symbol(id, symbolable_svg_element)
      symbolable_svg_element.name = "symbol"
      symbolable_svg_element["id"] = id
      svg_element.add_child(symbolable_svg_element)
    end

    def to_s
      svg_element.to_xml
    end

    private

    def svg_element
      document.children.detect { |element| element.name == "svg" }
    end
  end
end
