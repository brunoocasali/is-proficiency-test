class Course < ActiveRecord::Base

  validates :name, presence: true
  validates :status, presence: true
  validates :description, presence: true

  paginates_per 20

  # The correct form is create a new table called student_satuses...
  # to use the enumerate_it, but I don't know if I can change the E.R :D
  def status_humanized
    CourseStatus.translate(CourseStatus.key_for(status))
  end
end
