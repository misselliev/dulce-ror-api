require 'rails_helper'

RSpec.describe Talk, type: :model do
  let(:talk) { FactoryBot.build(:talk, :valid_talk) }
  let(:invalid_talk) { FactoryBot.build(:talk, :invalid_talk) }

  before { talk.save }

  it 'should be valid' do
    expect(talk).to be_valid
  end

  before { invalid_talk.save }

  it 'user creator should exist' do
    expect(invalid_talk).to_not be_valid
  end

  it 'title should exist' do
    invalid_talk.title = ''
    expect(invalid_talk).to_not be_valid
  end
end
