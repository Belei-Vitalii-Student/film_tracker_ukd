class Movie < ApplicationRecord
    validates :name, presence: true, uniqueness: { scope: :year }
    
    has_many :comments, dependent: :destroy
    has_and_belongs_to_many :stars
    has_and_belongs_to_many :categories
end
