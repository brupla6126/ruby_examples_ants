# frozen_string_literal: true

module Ants
  module Renderers
    class Ant
      def render(entity, window)
        renderable = entity.components[:renderable]
        position =  entity.components[:position]

        rectangle = renderable.shape

        if rectangle
          rectangle.x = position.x
          rectangle.y = position.y
        else
          # TODO: Use spawner for initial position
          rectangle = Rectangle.new(
            width: 4,
            height: 4,
            x: window.get(:width) / 2,
            y: window.get(:height) / 2,
            color: 'green'
          )

          renderable.shape = rectangle

          window.add(rectangle)
        end
      end
    end
  end
end
