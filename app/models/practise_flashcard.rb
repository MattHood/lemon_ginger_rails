class PractiseFlashcard < ApplicationRecord
  belongs_to :practise_session
  belongs_to :flashcard_instance
end
