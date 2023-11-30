class Continent < ApplicationRecord
    has_many :cities, as: :image
end
