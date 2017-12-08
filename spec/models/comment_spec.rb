require 'rails_helper'

RSpec.describe Comment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe Comment do
  let(:nyc) { Comment.create(content: 'NYC', user_id: 1, jam_session_id: 2) }
  let(:love_it) { Comment.create(content: 'love it!', user_id: 3, jam_session_id: 4)

  it 'has content' do
    expect(nyc.content).to eq('NYC')
  end

  it 'has a user' do
    expect(nyc.user).to eq(user_id: 1)
  end
