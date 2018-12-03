require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test 'valid_course' do
    course = Course.new(:name => 'test' , :department => 'test', :number => 42, :credit_hours => 42)
    assert course.save
  end

  test 'validation_on_name' do
    course = Course.new(:department => 'test', :number => 42, :credit_hours => 42)
    assert_not course.save
  end

  test 'validation_on_department' do
    course = Course.new(:name => 'test', :number => 42, :credit_hours => 42)
    assert_not course.save
  end

  test 'validation_on_number' do
    course = Course.new(:name => 'test' , :department => 'test', :credit_hours => 42)
    assert_not course.save
  end

  test 'validation_on_credit_hours' do
    course = Course.new(:name => 'test' , :department => 'test', :number => 42)
    assert_not course.save
  end

end
