# frozen_string_literal: true

module Ants
  module Components
    class Motion < Draco::Component
      attribute :speed, default: 0
      attribute :distance, default: 0
    end
  end
end
