# frozen_string_literal: true

module Ants
  module Worlds
    class Base < ::Draco::World
      def find_entity(name)
        return nil unless name

        # look for named entity
        return send(name.to_sym) if respond_to?(name.to_sym)

        # look by class name
        found = entities.detect do |entity|
          entity.class.name.split('::').last.downcase == name
        end

        return found if found

        # TODO: look by identity name
        # entities[Ants::Components::Identity].detect do |entity|
        #   entity.identity.name == name
        # end
      end
    end
  end
end
