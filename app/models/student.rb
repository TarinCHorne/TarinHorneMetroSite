class Student < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :sections, through: :enrollments

  validates :name, presence: true
  validates :number, presence: true
end
