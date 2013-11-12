class Course < ActiveRecord::Base
  has_many :semesters
  has_many :students, through: :semesters
  
  attr_accessible :courseID, :roomNumber, :name, :prefix, :description

end
