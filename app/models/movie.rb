class Movie < ApplicationRecord
  has_and_belongs_to_many :directors
  has_and_belongs_to_many :genres
end
