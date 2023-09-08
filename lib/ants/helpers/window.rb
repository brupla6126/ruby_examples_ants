# frozen_string_literal: true

require 'ruby2d'

module Ants
  module Helpers
    class Window < Ruby2D::Window
      def center
        [width / 2, height / 2]
      end
    end
  end
end
