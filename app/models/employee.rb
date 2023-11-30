class Employee < ApplicationRecord
    has_many :cities, as: :image
    has_many :continents, through: :cities, source: :image, source_type: 'Continent'
end
