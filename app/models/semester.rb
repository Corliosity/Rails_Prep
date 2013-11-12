class Semester < ActiveRecord::Base
  belongs_to :course
  belongs_to :student
  
  attr_accessible :course_id, :student_id
  
  validates_uniqueness_of :student_id, :scope => [:course_id]
end
