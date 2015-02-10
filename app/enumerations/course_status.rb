class CourseStatus < EnumerateIt::Base
  associate_values(
    :current => 1,
    :stopped => 2
  )
end
