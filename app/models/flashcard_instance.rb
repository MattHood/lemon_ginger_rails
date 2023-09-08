class FlashcardInstance < ApplicationRecord
  belongs_to :flashcard
  belongs_to :deck
end
