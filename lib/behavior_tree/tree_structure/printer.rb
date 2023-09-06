# frozen_string_literal: true

module BehaviorTree
  module TreeStructure
    # Algorithm to print tree.
    module Printer
      def resolve_display_name(node)
        class_simple_name(node)
      end

      def class_simple_name(node)
        parts = node.class.name.split('::')

        if parts.first == 'BehaviorTree'
          parts.last
        else
          parameters_string = parameters_string(node)

          parts.last(2).join('::') + parameters_string
        end
      end

      def parameters_string(node)
        key_values = parameters(node).map do |parameter|
          "#{parameter}: #{node.send(parameter)}"
        end

        key_values.any? ? "(#{key_values.join(', ')})" : ''
      end

      def parameters(node)
        variables = node.instance_variables - node.class.superclass.new.instance_variables

        (variables - [:@tick_prevented, :@first_running_idx]).map do |parameter|
          parameter.to_s[1..].to_sym
        end
      end
    end
  end
end
