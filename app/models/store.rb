class Store < ApplicationRecord
    has_many :publishers
    has_many :books, through: :publishers
end
