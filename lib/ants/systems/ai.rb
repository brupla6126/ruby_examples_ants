# frozen_string_literal: true

module Ants
  module Systems
    class Ai < Draco::System
      filter Ants::Components::Ai

      def tick(context)
        entities.each do |entity|
          entity.ai.behaviors.each do |behavior|
            behavior.context = context
            behavior.context[:entity] = entity

            behavior.tick!

            # Ants.logger.debug { entity.identity.name }
            Ants.logger.debug { behavior.print }
          end
        end
      end
    end
  end
end
