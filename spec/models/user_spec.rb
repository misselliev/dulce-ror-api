require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user, :valid_user) }
  let(:invalid_user) { FactoryBot.build(:user, :invalid_user) }

  before { user.save }

  it 'should be valid' do
    expect(user).to be_valid
  end

  before { invalid_user.save }

  it 'password should not be too short' do
    invalid_user.password = '1'
    expect(invalid_user).to_not be_valid
  end
end
