# frozen_string_literal: true

require_relative '../renderers/ant'

module Ants
  module Entities
    class Ant < Draco::Entity
      component Components::Ai, behaviors: [Ants::Behaviors::Trees::Ant::Wander.tree]
      component Components::Motion
      component Components::Orientation
      component Components::Position
      component Components::Renderable, renderer: Ants::Renderers::Ant.new
    end
  end
end
