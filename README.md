# svg_sprite_generator

Generate an SVG sprite for any set of SVG icons/images

## Installation

Add `svg_sprite_generator` to your Gemfile

```
gem "svg_sprite_generator"
```

and install it

```
bundle install
```

## Usage

```ruby
svg_sprite_generator = SvgSpriteGenerator.new
Dir.glob(Rails.root.join("app/assets/images/icons/") + "*.svg").each do |file_path|
  svg_sprite_generator.add_svg(file_path)
end
svg_sprite_generator.generate.html_safe
```

## Todos

- Publish to rubygems.org
- Add tests
