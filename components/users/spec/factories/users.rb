FactoryBot.define do
  factory :user do
    name { |n| "Dummy User #{n}" }
    email { |n| "dummy_user#{n}@example.com" }
    password_digest { "password" }
  end
end
