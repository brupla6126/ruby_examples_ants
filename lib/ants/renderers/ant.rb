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
          rectangle = Rectangle.new(
            width: 4,
            height: 4,
            x: position.x,
            y: position.y,
            color: 'silver',
            z: 100
          )

          renderable.shape = rectangle

          window.add(rectangle)
        end
      end
    end
  end
end
