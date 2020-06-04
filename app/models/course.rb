class Course < ApplicationRecord
validates :symbol, :name, presence: true, uniqueness: true
validates :description, presence: true, length: { minimum: 10 }
has_many :student_courses
has_many :students, through: :student_courses
end
