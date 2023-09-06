# frozen_string_literal: true

class TickAll < BehaviorTree::ControlNodeBase
  def on_tick
    # This loop iterates children ticks them all.
    tick_each_children do |child|
      return status.running! if child.status.running?
    end

    status.success!
  end
end
