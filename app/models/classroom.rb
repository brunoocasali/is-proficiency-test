class Classroom < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
  
  paginates_per 25
end
