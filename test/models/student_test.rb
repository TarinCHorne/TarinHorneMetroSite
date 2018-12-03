require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test 'valid_student' do
    student = Student.new(:name => 'test', :number => 42)
    assert student.save
  end

  test 'validation_on_name' do
    student = Student.new(:number => 42)
    assert_not student.save
  end

  test 'validation_on_number' do
    student = Student.new(:name => 'test')
    assert_not student.save
  end

end
