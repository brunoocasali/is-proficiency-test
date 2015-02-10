FactoryGirl.define do
  factory :classroom do
    entry_at Forgery('date').date

    students
    courses
  end
end

