# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :classroom do
    students nil
    courses nil
    entry_at "2014-12-23"
  end
end
