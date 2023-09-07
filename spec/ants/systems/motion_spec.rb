# frozen_string_literal: true

RSpec.describe Ants::Systems::Motion do
  describe '#tick' do
    subject { system.tick(tree_context) }

    let(:system) { described_class.new }
    let(:tree_context) { {} }
    let(:ant) { Ants::Entities::Ant.new(position:) }
    let(:position) { { x: 0, y: 0 } }

    before do
      ant.components[:motion].distance = 10
      ant.components[:orientation].degrees = 45.0

      allow(system).to receive(:entities) { [ant] }
    end

    it do
      subject

      expect(ant.position.x).to eq(7.071068)
      expect(ant.position.y).to eq(7.071068)
    end
  end
end
