# frozen_string_literal: true

module Ants
  module Components
    class Motion < Draco::Component
      attribute :speed, default: 0
      attribute :direction, default: 0 # in degrees (0..360)
    end
  end
end
