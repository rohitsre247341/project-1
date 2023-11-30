class Chapter < ApplicationRecord
    belongs_to :book, -> {readonly}, optional: true
end
