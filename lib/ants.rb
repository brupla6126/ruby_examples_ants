# frozen_string_literal: true

require 'behavior_tree'
require 'draco'
require 'draco/scenes'
require 'draco/periodic'
require 'hash_dot'
require 'logger'

require_relative 'ants/version'
require_relative 'ants/worlds/base'
require_relative 'ants/components/motion'
require_relative 'ants/components/renderable'
require_relative 'ants/components/position'
require_relative 'ants/components/ai'
require_relative 'ants/entities/food_map'
require_relative 'ants/helpers/window'
require_relative 'ants/systems/rendering'
require_relative 'ants/systems/motion'
require_relative 'ants/systems/ai'
require_relative 'ants/systems/bounding'

module Ants
  class Error < StandardError; end

  def self.logger=(logger)
    @@logger = logger # rubocop:disable Style/ClassVars
  end

  def self.logger
    @@logger ||= begin # rubocop:disable Style/ClassVars
      logger = Logger.new($stdout)
      logger.formatter = proc do |_severity, _datetime, _progname, msg|
        "#{msg}\n"
      end
      logger
    end

    @@logger
  end

  def self.world=(world)
    @@world = world # rubocop:disable Style/ClassVars
  end

  def self.world
    @@world
  end
end

begin
  Dir[File.join(File.expand_path('..', __dir__), 'lib', '**', '*.rb')].each { |file| require file }
rescue StandardError => e
  Ants.logger.error { e.message }
  Ants.logger.error { e.backtrace }
end
