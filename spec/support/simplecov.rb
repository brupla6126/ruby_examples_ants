# frozen_string_literal: true

if ENV.fetch('COVERAGE', nil) == '1'
  require 'simplecov'
  require 'simplecov-html'

  SimpleCov.profiles.define :ants do
    add_filter '/spec/'
  end

  SimpleCov.start :ants do
    primary_coverage :line
    enable_coverage :branch
    minimum_coverage line: 90, branch: 80
    minimum_coverage_by_file line: 90, branch: 80

    formatter SimpleCov::Formatter::HTMLFormatter
  end
end
