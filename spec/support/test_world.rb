# frozen_string_literal: true

class TestWorld < Ants::Worlds::Base
  def self.configure(&block)
    class_eval(&block) if block

    new
  end
end
