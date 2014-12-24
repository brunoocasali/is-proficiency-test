class Student < ActiveRecord::Base

  validates :name, presence: true
  validates :status, presence: true
  validates :register_number, presence: true, length: { in: 3..45 }

  paginates_per 20

  # The correct form is create a new table called student_satuses...
  # to use the enumerate_it, but I don't know if I can change the E.R :D
  def status_humanized
    StudentStatus.translate(StudentStatus.key_for(status))
  end

end
