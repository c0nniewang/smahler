require 'rails_helper'

RSpec.describe JamSession, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe JamSession do
  let(:hang_time) { JamSession.create(title: 'hang time', description: 'hang time!', host_id: 1, musician_ids: [1, 2, 3], city_id: 2, genre_id: 3) }

  it 'has a title' do
    expect(hang_time.title).to eq('hang time')
  end

  it 'has a description' do
    expect(hang_time.description).to eq("hang time!")
  end

  it 'has a host' do
    expect(hang_time.host.id).to eq(user_id: 1)
  end

  it 'has musicians' do
    expect(hang_time.musicians.map{|m| m.id }).to eq([musician_ids: [1, 2, 3])
  end

  it 'has a city' do
    expect(hang_time.city.id).to eq(city_id: 2)
  end

  it 'has a genre' do
    expect(hang_time.genre.id).to eq(genre_id: 3)
  end
