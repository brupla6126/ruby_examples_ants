# frozen_string_literal: true

module Ants
  module Systems
    class Motion < Draco::System
      filter Ants::Components::Motion
      filter Ants::Components::Orientation
      filter Ants::Components::Position

      def tick(context)
        entities.each do |_entity|
          context[:delta]

          # TODO: calculate new position from current position, orientation and motion
          # entity.position = entity.position + entity.orientation + entity.motion
        end
      end
    end
  end
end
