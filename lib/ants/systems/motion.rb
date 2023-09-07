# frozen_string_literal: true

module Ants
  module Systems
    class Motion < Draco::System
      filter Ants::Components::Motion
      filter Ants::Components::Orientation
      filter Ants::Components::Position

      def tick(context)
        entities.each do |entity|
          context[:delta]

          puts "current position: #{entity.position}"

          radians = (entity.orientation.degrees % 360) * Math::PI / 180.0

          entity.position.x += (entity.motion.distance * Math.cos(radians)).round(6)
          entity.position.y += (entity.motion.distance * Math.sin(radians)).round(6)

          puts "new position: #{entity.position}"
        end
      end
    end
  end
end
