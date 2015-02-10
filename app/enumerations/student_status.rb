class StudentStatus < EnumerateIt::Base
  associate_values(
    registered: 1,
    quitter: 2
  )
end

