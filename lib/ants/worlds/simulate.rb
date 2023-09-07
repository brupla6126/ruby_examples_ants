# frozen_string_literal: true

module Ants
  module Worlds
    class Simulate < Ants::Worlds::Base
      include Draco::Scenes

      default_scene :run

      # scene :setup

      scene :run do
        systems Ants::Systems::Ai
        systems Ants::Systems::Motion
      end
    end
  end
end
