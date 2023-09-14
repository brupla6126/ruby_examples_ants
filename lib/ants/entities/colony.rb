# frozen_string_literal: true

require_relative '../renderers/colony'

module Ants
  module Entities
    class Colony < Draco::Entity
      component Components::Position
      component Components::Renderable, renderer: Ants::Renderers::Colony.new
    end
  end
end
