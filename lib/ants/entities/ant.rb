# frozen_string_literal: true

module Ants
  module Entities
    class Ant < Draco::Entity
      component Components::Ai, behaviors: [Ants::Behaviors::Trees::Ant::Wander.tree]
      component Components::Motion
      component Components::Orientation
      component Components::Position
    end
  end
end
