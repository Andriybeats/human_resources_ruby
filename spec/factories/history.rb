FactoryBot.define do
  factory :history do
    date_start "10-10-10"
    date_end "10-10-10"
    association (:employee)
    association (:position)
  end
end