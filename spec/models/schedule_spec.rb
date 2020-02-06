require 'rails_helper'

RSpec.describe Schedule, type: :model do
  let(:schedule) { FactoryBot.build(:schedule, :valid_schedule) }

  before { schedule.save }

  it 'should have a talk associated with it' do
    expect(schedule.talk).to be_valid
  end

  it 'should have a user associated with it' do
    expect(schedule.user).to be_valid
  end

  it 'should be valid' do
    expect(schedule).to be_valid
  end
end
