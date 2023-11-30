class Student < ApplicationRecord
    belongs_to :teacher, counter_cache: true
    has_many :cities, as: :image
end
