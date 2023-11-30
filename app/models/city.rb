class City < ApplicationRecord
    belongs_to :image, polymorphic: true
end
