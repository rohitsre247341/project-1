class Author < ApplicationRecord
    has_many :books, foreign_key: 'writer_id'
    has_many :images, through: :books
end
