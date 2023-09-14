# frozen_string_literal: true

RSpec.describe Ants::Systems::Bounding do
  describe '#tick' do
    subject { system.tick(tree_context) }

    let(:system) { described_class.new }
    let(:tree_context) { { width: 200, height: 400, state: { tick_count: 0 } }.to_dot }
    let(:ant) { Ants::Entities::Ant.new(position:) }
    let(:position) { { x: position_x, y: position_y } }
    let(:shape) do
      Rectangle.new(
        width: 4,
        height: 4
      )
    end
    let(:position_x) { 6 }
    let(:position_y) { 12 }

    before do
      ant.renderable.shape = shape

      allow(system).to receive(:entities) { [ant] }
    end

    context 'when no renderable shape is set' do
      let(:shape) { nil }

      it 'position stays the same' do
        subject

        expect(ant.position.x).to eq(position_x)
        expect(ant.position.y).to eq(position_y)
      end
    end

    context 'when it moved inside' do
      let(:position_x) { 102 }
      let(:position_y) { 204 }

      it 'position stays the same' do
        subject

        expect(ant.position.x).to eq(position_x)
        expect(ant.position.y).to eq(position_y)
      end
    end

    context 'when it moved past the left' do
      let(:position_x) { -10 }

      it 'sets x position at 0' do
        subject

        expect(ant.position.x).to eq(0)
        expect(ant.position.y).to eq(position_y)
      end
    end

    context 'when it moved past the right' do
      let(:position_x) { tree_context[:width] + 10 }

      it 'sets x position to width' do
        subject

        expect(ant.position.x).to eq(tree_context[:width] - shape.width + 1)
        expect(ant.position.y).to eq(position_y)
      end
    end

    context 'when it moved past the top' do
      let(:position_y) { -10 }

      it 'sets y position at 0' do
        subject

        expect(ant.position.x).to eq(position_x)
        expect(ant.position.y).to eq(0)
      end
    end

    context 'when it moves past the bottom' do
      let(:position_y) { tree_context[:height] + 10 }

      it 'sets y position to height' do
        subject

        expect(ant.position.x).to eq(position_x)
        expect(ant.position.y).to eq(tree_context[:height] - shape.height + 1)
      end
    end
  end
end
