class Course < ApplicationRecord
validates :symbol, :name, presence: true, uniqueness: true
validates :description, presence: true, length: { minimum: 10 }
end
