class Course < ApplicationRecord
  validates :short_name, presence: true, length: { minumum: 3, maximum: 15 }
  validates :name, presence: true, length: { minumum: 5, maximum: 50 }
  validates :description, presence: true, length: { minumum: 10, maximum: 300 }
  has_many :student_courses
  has_many :students, through: :student_courses
end
