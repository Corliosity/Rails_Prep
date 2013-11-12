class Student < ActiveRecord::Base
  has_many :semesters
  has_many :courses, through: :semesters
  
  attr_accessible :birthday, :firstName, :lastName, :schoolYear, :studentID, :course_ids, :course
  
  validates :firstName, :lastName, presence: true, length: { minimum: 3 }
  validates :birthday, :date => { :before => Time.now - 15.year }
  validates_inclusion_of :schoolYear, :in => %w(Professor Senior Junior Sophomore Freshman), :allow_nil => false, :message => "Please select from a valid School Year classification"
  validates :studentID, uniqueness: true, numericality: { only_integer: true }
  validates_associated :courses
end
