class Movie < ApplicationRecord
    has_many :comments
    has_and_belongs_to_many :stars
    has_and_belongs_to_many :categories
end
