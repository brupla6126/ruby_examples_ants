# frozen_string_literal: true

RSpec.describe Ants::Worlds::Base do
  describe '#find_entity' do
    subject { world.find_entity(name) }

    let(:world) { described_class.new }
    let(:name) { nil }

    it { expect(subject).to be_nil }

    context 'with a named entity' do
      let(:world) { TestWorld.configure { entity Ants::Entities::FoodMap, as: :food_map } }

      context 'when known' do
        let(:name) { 'food_map' }

        it { expect(subject).to eq world.food_map }
      end

      context 'when unknown' do
        let(:name) { 'jade' }

        it { expect(subject).to be_nil }
      end
    end

    context 'with class name' do
      let(:entity) { Ants::Entities::FoodMap.new }

      before { world.entities << entity }

      context 'when known' do
        let(:name) { 'foodmap' }

        it { expect(subject).to eq entity }
      end

      context 'when unknown' do
        let(:name) { 'jade' }

        it { expect(subject).to be_nil }
      end
    end

    context 'with identity name', pending: 'todo' do
      let(:entity) { Ants::Factories::Entity.create(name: 'FoodMap') }

      before { world.entities << entity }

      context 'when known' do
        let(:name) { 'FoodMap' }

        it { expect(subject).to eq entity }
      end

      context 'when unknown' do
        let(:name) { 'jade' }

        it { expect(subject).to be_nil }
      end
    end
  end
end
