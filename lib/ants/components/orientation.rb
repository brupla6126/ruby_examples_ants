# frozen_string_literal: true

module Ants
  module Components
    class Orientation < Draco::Component
      attribute :degrees, default: 0 # in degrees (0..360)
    end
  end
end
