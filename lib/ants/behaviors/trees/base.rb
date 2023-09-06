# frozen_string_literal: true

module Ants
  module Behaviors
    module Trees
      class Base
        include BehaviorTree
        include Ants::Behaviors
      end
    end
  end
end
