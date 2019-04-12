FactoryBot.define do
  factory :vacation do
    date_start "10-10-2010"
    date_end "10-10-10"
    association (:employee)
  end
end