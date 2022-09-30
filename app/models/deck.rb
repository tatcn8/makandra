class Deck < ApplicationRecord
  belongs_to :organization
  has_many :cards
end
