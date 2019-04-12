FactoryBot.define do
  factory :department do
    sequence(:name) {|i| "name#{i}"}
    sequence(:abbreviation) {|i| "#{i}"}
  end
end