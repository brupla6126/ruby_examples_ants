# frozen_string_literal: true

require 'draco'
require 'draco/scenes'
require 'logger'

require_relative 'ants/version'

begin
  Dir[File.join(File.expand_path('..', __dir__), 'lib', '**', '*.rb')].each { |file| require file }
rescue StandardError => e
  Ants.logger.error { e.message }
  Ants.logger.error { e.backtrace }
end

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
