class PractiseSession < ApplicationRecord
  belongs_to :user
  has_many :practise_cards
end
