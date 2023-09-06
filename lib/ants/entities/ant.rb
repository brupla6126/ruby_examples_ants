# frozen_string_literal: true

module Ants
  module Entities
    class Ant < Draco::Entity
      component Components::Ai
      component Components::Motion
      component Components::Orientation
      component Components::Position
    end
  end
end
