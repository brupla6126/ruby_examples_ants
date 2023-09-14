# frozen_string_literal: true

module Ants
  module Systems
    class Rendering < Draco::System
      filter Ants::Components::Renderable

      def tick(context)
        entities.each do |entity|
          entity.components[:renderable].renderer.render(entity, context[:window])
        end
      end
    end
  end
end
