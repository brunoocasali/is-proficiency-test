FactoryGirl.define do
  factory :course do
    name { Forgery('lorem_ipsum').words(3) }
    description { Forgery('lorem_ipsum').words(3) }
    status { CourseStatus.list.sample }
  end
end

