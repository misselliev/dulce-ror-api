# frozen_string_literal: true

FactoryBot.define do
  factory :user, aliases: [:creator] do
    trait :valid_user do
      id { 20 }
      email { 'dulce@woof.com' }
      password { '123456' }
    end

    trait :invalid_user do
      id { nil }
      email { 'email .net' }
      password { '123' }
    end
  end
end
