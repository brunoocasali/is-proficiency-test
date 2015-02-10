class Student < ActiveRecord::Base

  validates :name, presence: true
  validates :register_number, presence: true, length: { in: 3..45 }

  paginates_per 20

  has_enumeration_for :status, with: StudentStatus, required: true

  def status_humanized
    StudentStatus.translate(StudentStatus.key_for(status))
  end

end

