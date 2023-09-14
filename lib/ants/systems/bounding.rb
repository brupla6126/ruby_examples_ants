# frozen_string_literal: true

module Ants
  module Systems
    # This system makes sure all Renderable entities are drawn within bounds
    class Bounding < Draco::System
      include Draco::Periodic

      filter Ants::Components::Position
      filter Ants::Components::Renderable

      # Only runs the system every 5 ticks
      run_every 5

      def tick(context)
        entities.each do |entity|
          # skip if shape is not set
          next unless entity.renderable.shape

          entity.position.x = [0, entity.position.x].max # left
          entity.position.x = [context[:width] - entity.renderable.shape.width + 1, entity.position.x].min # right

          entity.position.y = [0, entity.position.y].max # top
          entity.position.y = [context[:height] - entity.renderable.shape.height + 1, entity.position.y].min # bottom

          Ants.logger.debug { "new position: #{entity.position}" }
        end
      end
    end
  end
end
