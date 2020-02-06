# frozen_string_literal: true

FactoryBot.define do
  factory :schedule do
    trait :valid_schedule do
      id { 20 }
      association :talk, factory: %i[talk valid_talk]
      association :user, factory: %i[user valid_user]
    end
  end
end
