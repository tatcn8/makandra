class Organization < ApplicationRecord
  has_many :decks
  has_many :users
end
