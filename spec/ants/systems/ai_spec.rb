# frozen_string_literal: true

RSpec.describe Ants::Systems::Ai do
  describe '#tick' do
    subject { system.tick(tree_context) }

    let(:system) { described_class.new }
    let(:tree_context) { { a: 1 } }
    let(:ant) { Ants::Entities::Ant.new }
    let(:behavior) { ant.components[:ai].behaviors.first }

    before do
      allow(system).to receive(:entities) { [ant] }
      allow(behavior).to receive(:tick!)
    end

    it do
      subject

      expect(behavior).to have_received(:tick!)
      expect(behavior.context[:a]).to eq(1)
      expect(behavior.context[:entity]).to eq(ant)
    end
  end
end
