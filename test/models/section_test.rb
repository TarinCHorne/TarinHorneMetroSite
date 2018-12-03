require 'test_helper'

class SectionTest < ActiveSupport::TestCase

  test "the truth" do
     assert true
  end

  test 'valid_section' do
    section = Section.new(:semester => 'test', :number => 42, :room_number => 42)
    assert_not section.save
  end

  test 'validation_on_semester' do
    section = Section.new(:number => 42, :room_number => 42)
    assert_not section.save
  end

  test 'validation_on_number' do
    section = Section.new(:semester => 'test', :room_number => 42)
    assert_not section.save
  end

  test 'validation_on_room_number' do
    section = Section.new(:semester => 'test', :number => 42)
    assert_not section.save
  end

end
