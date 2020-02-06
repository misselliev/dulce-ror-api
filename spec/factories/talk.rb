# frozen_string_literal: true

FactoryBot.define do
  factory :talk do
    trait :valid_talk do
      id { 1 }
      title { 'Ember vs Vue: 101' }
      description { 'Intro to frontend 101' }
      location { 'Glastonbury' }
      date { 'Feb 27, 2020' }
      time { '2:30pm' }
      speaker_name { 'Dulce Woof' }
      speaker_title { 'Woof Expert' }
      association :creator, :valid_user
    end

    trait :invalid_talk do
      id { 2 }
      title { 'Vue basics' }
      description { 'Intro to frontend 101' }
      location { 'Glastonbury' }
      date { 'Feb 27, 2020' }
      time { '12:30pm' }
      speaker_name { 'Dulce Woof' }
      speaker_title { 'Woof Expert' }
      association :creator, :invalid_user
    end
  end
end
