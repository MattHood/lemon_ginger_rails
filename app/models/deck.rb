class Deck < ApplicationRecord
  belongs_to :user
  has_many :flashcards, through: :flashcard_instance
end
