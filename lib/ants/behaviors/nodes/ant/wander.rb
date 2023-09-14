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
            ticks = context[:ticks]

            if (ticks % 10).zero?
              entity.motion.velocity_x = 0
              entity.motion.velocity_y = 0
            end

            if (ticks % 20).zero?
              entity.motion.velocity_x += Random.rand(3)
              entity.motion.velocity_y += Random.rand(3)

              entity.motion.velocity_x *= Random.rand(-1..1)
              entity.motion.velocity_y *= Random.rand(-1..1)
            end

            puts "velocity: (#{entity.motion.velocity_x}, #{entity.motion.velocity_y})"
          end
        end
      end
    end
  end
end
