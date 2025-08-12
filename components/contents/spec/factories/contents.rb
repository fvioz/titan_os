FactoryBot.define do
  factory :content do
    type { "" }
    original_title { |n| "Title #{n}" }
    year { 1988 }
    duration_in_seconds { 1000 }
  end
end
