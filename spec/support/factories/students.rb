FactoryGirl.define do
  factory :student do
    name { Forgery('name').full_name }
    register_number { Forgery('name').full_name }
     status { StudentStatus.list.sample }
  end
end

