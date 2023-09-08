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

          entity.position.x += (entity.motion.distance * Math.cos(radians)).round(0)
          entity.position.y += (entity.motion.distance * Math.sin(radians)).round(0)

          entity.position.x = [context[:width], entity.position.x].min
          entity.position.x = [-context[:width], entity.position.x].max

          entity.position.y = [context[:height], entity.position.y].min
          entity.position.y = [-context[:height], entity.position.y].max

          puts "new position: #{entity.position}"
        end
      end
    end
  end
end
