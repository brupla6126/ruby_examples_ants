# frozen_string_literal: true

RSpec.describe Ants::Helpers::Window do
  describe '#center' do
    subject { window.center }

    let(:window) { described_class.new(width:, height:) }
    let(:width) { 640 }
    let(:height) { 400 }

    it do
      expect(subject).to eq([320, 200])
    end
  end
end
