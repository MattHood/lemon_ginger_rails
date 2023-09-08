class CreatePractiseFlashcards < ActiveRecord::Migration[7.0]
  def change
    create_table :practise_flashcards do |t|
      t.references :practise_session, null: false, foreign_key: true
      t.references :flashcard_instance, null: false, foreign_key: true
      t.decimal :score

      t.timestamps
    end
  end
end
