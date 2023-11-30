class Teacher < ApplicationRecord
    has_many :students
    has_many :cities, as: :image
end
