class Image < ApplicationRecord
    has_many :employees, as: :image
end
