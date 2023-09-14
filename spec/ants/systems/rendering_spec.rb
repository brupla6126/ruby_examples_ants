# frozen_string_literal: true

RSpec.describe Ants::Systems::Rendering do
  describe '#tick' do
    subject { system.tick(tree_context) }

    let(:system) { described_class.new }
    let(:tree_context) { { width: 200, height: 400, state: { tick_count: 0 }, window: }.to_dot }
    let(:ant) { Ants::Entities::Ant.new }
    let(:window) { nil }

    before do
      allow(system).to receive(:entities) { [ant] }

      allow(ant.components[:renderable].renderer).to receive(:render)
    end

    it 'calls renderer#render' do
      subject

      expect(ant.components[:renderable].renderer).to have_received(:render).with(ant, tree_context[:window])
    end
  end
end
