class CreateFlashcardInstances < ActiveRecord::Migration[7.0]
  def change
    create_table :flashcard_instances do |t|
      t.references :flashcard, null: false, foreign_key: true
      t.references :deck, null: false, foreign_key: true

      t.timestamps
    end
  end
end
