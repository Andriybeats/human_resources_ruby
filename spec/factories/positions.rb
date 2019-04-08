FactoryBot.define do
    factory :position do
    sequence(:name) {|i| "name#{i}"}
    sallary 100000
    vacations_days 3
  end
end