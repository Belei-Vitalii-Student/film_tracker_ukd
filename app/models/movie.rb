class Movie < ApplicationRecord
    validates :name, presence: true, uniqueness: { scope: :year }
    
    has_many :comments, dependent: :destroy
    has_and_belongs_to_many :stars
    has_and_belongs_to_many :categories

    def self.search_by_name(name)
        where("lower(name) LIKE ?", "%#{name}%")
    end
end
