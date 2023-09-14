# frozen_string_literal: true

RSpec.describe Ants::Systems::Motion do
  describe '#tick' do
    subject { system.tick(tree_context) }

    let(:system) { described_class.new }
    let(:tree_context) { { width: 200, height: 400, state: { tick_count: 0 } }.to_dot }
    let(:ant) { Ants::Entities::Ant.new(position:, motion:) }
    let(:position) { { x: position_x, y: position_y } }
    let(:position_x) { 6 }
    let(:position_y) { 12 }
    let(:motion) { { velocity_x:, velocity_y: } }
    let(:velocity_x) { 0 }
    let(:velocity_y) { 0 }

    before do
      allow(system).to receive(:entities) { [ant] }
    end

    context 'when x velocity is negative' do
      let(:velocity_x) { -2 }

      it 'moves to the left' do
        subject

        expect(ant.position.x).to eq(4)
        expect(ant.motion.velocity_x).to eq(velocity_x)
        expect(ant.motion.velocity_y).to eq(velocity_y)
      end

      context 'when it moves past the left' do
        let(:velocity_x) { -10 }

        it 'sets position at 0' do
          subject

          expect(ant.position.x).to eq(-4)
          expect(ant.motion.velocity_x).to eq(velocity_x)
          expect(ant.motion.velocity_y).to eq(-velocity_y)
        end
      end
    end

    context 'when x velocity is positive' do
      let(:velocity_x) { 6 }

      it 'moves to the right' do
        subject

        expect(ant.position.x).to eq(12)
        expect(ant.motion.velocity_x).to eq(velocity_x)
        expect(ant.motion.velocity_y).to eq(velocity_y)
      end

      context 'when it moves past the right' do
        let(:position_x) { tree_context[:height] - 5 }
        let(:velocity_x) { 10 }

        it 'sets position to width' do
          subject

          expect(ant.position.x).to eq(position_x + velocity_x)
          expect(ant.motion.velocity_x).to eq(velocity_x)
          expect(ant.motion.velocity_y).to eq(-velocity_y)
        end
      end
    end

    context 'when y velocity is negative' do
      let(:velocity_y) { -2 }

      it 'moves towards the top' do
        subject

        expect(ant.position.y).to eq(position_y + velocity_y)
        expect(ant.motion.velocity_x).to eq(velocity_x)
        expect(ant.motion.velocity_y).to eq(velocity_y)
      end

      context 'when it moves past the top' do
        let(:velocity_y) { -20 }

        it 'sets y position at 0' do
          subject

          expect(ant.position.y).to eq(position_y + velocity_y)
          expect(ant.motion.velocity_x).to eq(-velocity_x)
          expect(ant.motion.velocity_y).to eq(velocity_y)
        end
      end
    end

    context 'when y velocity is positive' do
      let(:velocity_y) { 6 }

      it 'moves towards the bottom' do
        subject

        expect(ant.position.y).to eq(18)
        expect(ant.motion.velocity_x).to eq(velocity_x)
        expect(ant.motion.velocity_y).to eq(velocity_y)
      end

      context 'when it moves past the bottom' do
        let(:position_y) { tree_context[:height] - 5 }
        let(:velocity_y) { 10 }

        it 'sets y position to height' do
          subject

          expect(ant.position.y).to eq(position_y + velocity_y)
          expect(ant.motion.velocity_x).to eq(-velocity_x)
          expect(ant.motion.velocity_y).to eq(velocity_y)
        end
      end
    end
  end
end
