require 'rails_helper'

RSpec.describe Comment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe Instrument do
  let(:trombone) { Instrument.create(name: "trombone") }

  it 'has a name' do
    expect(trombone.name).to eq('trombone')
  end
