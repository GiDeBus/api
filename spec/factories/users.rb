FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "User #{n}" }
    sequence(:name) { |n| "Mr. #{n}" }
    url { "http://example.com" }
    avatar_url { "http://example.com/avatar_url" }
    provider { "github" }
  end
end
