# frozen_string_literal: true

module Ants
  module Behaviors
    module Nodes
      module Ant
        class Wander < BehaviorTree::Task
          def on_tick
            execute

            status.success!

            status
          end

          private

          def execute
            entity = context[:entity]

            entity.orientation.degrees += Random.rand(0..5)

            entity.motion.distance = Random.rand(11)
          end
        end
      end
    end
  end
end
