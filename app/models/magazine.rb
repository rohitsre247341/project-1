class Magazine < ApplicationRecord
    has_many :images, as: :imageable
end
