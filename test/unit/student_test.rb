require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should not save empty fields" do
    student = Student.new
    assert !student.save
  end
  
  test "should not save invalid string" do
    student = Student.new
    student.schoolYear = "froshman"
    assert !student.save
  end
  
  test "should not have invalid birthday" do
    student = Student.new
    student.firstName = "Andrew"
    student.lastName = "Corliss"
    student.schoolYear = "Freshman"
    student.studentID = 1003
    assert !student.save
  end
  
  
end
