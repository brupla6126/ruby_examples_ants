# frozen_string_literal: true

module Ants
  module Renderers
    class Colony
      def render(entity, window)
        renderable = entity.components[:renderable]
        position = entity.components[:position]

        circle = renderable.shape

        return if circle # colony dowes not move

        radius = [window.get(:width), window.get(:height)].max * 0.05 # 5% of window

        circle = Circle.new(
          radius:,
          x: position.x,
          y: position.y,

          color: 'brown'
        )

        renderable.shape = circle

        window.add(circle)
      end
    end
  end
end
