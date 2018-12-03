class Section < ApplicationRecord
  belongs_to :course
  has_many :enrollments, dependent: :destroy
  has_many :students, through: :enrollments

  validates :number, presence: true
  validates :room_number, presence: true
  validates :semester, presence: true

  def name
    "#{course.name} #{number} #{semester}"
  end
end
