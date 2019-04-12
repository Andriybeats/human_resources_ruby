FactoryBot.define do
    factory :employee do
      sequence(:name) {|i| "name#{i}"}
      sequence(:surname) {|i| "surname#{i}"}
      date_birthday "10-10-10"
      city_birthday "sdds"
      address "iusds"
      start_work "10-10-10"
      association (:position)
      association (:department)
    end
end