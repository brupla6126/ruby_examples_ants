# frozen_string_literal: true

require_relative '../base'

module Ants
  module Behaviors
    module Trees
      module Ant
        class Wander < Ants::Behaviors::Trees::Base
          def self.tree
            Tree.new wander
          end

          def self.wander
            Sequence.new([
                           Nodes::Ant::Wander.new
                         ])
          end
        end
      end
    end
  end
end
