class Book < ApplicationRecord
    belongs_to :writer, class_name: 'Author'
    has_many :chapters, dependent: :destroy_async
    has_many :publishers
    has_many :stores, through: :publishers, dependent: :destroy, autosave: true
    has_many :images, as: :imageable
end
