require 'rails_helper'

RSpec.describe Character, type: :model do
  subject { Character.find(rand(1..400)) }

  it { expect(described_class.superclass).to be ApplicationResource }

  describe '#order_episode' do
    it 'static episodes' do
      subject.stub(:episode) { [ 8, 6, 9, 2, 5, 1, 12, 13 ] }
      expect(subject.order_episode).to eq([1, 2, 5, 6, 8, 9, 12, 13])
    end

    it 'dynamic episodes' do
      expect(subject.order_episode).to eq(subject.episode.sort)
    end
  end

  describe '#first_episode_id' do
    it 'static episode id' do
      subject.stub(:order_episode) { %w(https://rickandmortyapi.com/api/episode/5) }
      expect(subject.first_episode_id).to eq('5')
    end

    it 'dynamic episode id' do
      episode_id = rand(1..30).to_s
      subject.stub(:order_episode) { ["https://rickandmortyapi.com/api/1/episode/#{episode_id}"] }
      expect(subject.first_episode_id).to eq(episode_id)
    end
  end

  describe '#first_episode' do
    it 'dynamic episode id' do
      first_episode_id = rand(1..30).to_s
      subject.stub(:first_episode_id) { first_episode_id }
      expect(subject.first_episode).to eq(Episode.find(first_episode_id))
    end
  end
end
