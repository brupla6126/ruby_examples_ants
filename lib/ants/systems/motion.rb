# frozen_string_literal: true

module Ants
  module Systems
    class Motion < Draco::System
      include Draco::Periodic

      filter Ants::Components::Motion
      filter Ants::Components::Position

      # Only runs the system every 5 ticks
      run_every 5

      def tick(context)
        entities.each do |entity|
          Ants.logger.debug {  "current position: #{entity.position}" }

          entity.position.x += entity.motion.velocity_x
          entity.position.y += entity.motion.velocity_y

          # bounce if hitting left or right
          entity.motion.velocity_y *= -1 if entity.position.x <= 0 || entity.position.x >= context[:width]

          # bounce if hitting top or bottom
          entity.motion.velocity_x *= -1 if entity.position.y <= 0 || entity.position.y >= context[:height]
        end
      end
    end
  end
end
