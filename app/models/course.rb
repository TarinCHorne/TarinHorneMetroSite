class Course < ApplicationRecord
  has_many :sections, dependent: :delete_all

  validates :number, presence: true
  validates :name, presence: true
  validates :credit_hours, presence: true
  validates :department, presence: true
end
