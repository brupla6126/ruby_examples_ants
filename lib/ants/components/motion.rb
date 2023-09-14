# frozen_string_literal: true

module Ants
  module Components
    class Motion < Draco::Component
      attribute :velocity_x, default: 0
      attribute :velocity_y, default: 0
    end
  end
end
