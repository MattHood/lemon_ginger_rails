class CreateFlashcards < ActiveRecord::Migration[7.0]
  def change
    create_table :flashcards do |t|
      t.references :activity, null: false, foreign_key: true
      t.text :data_json
      t.string :name

      t.timestamps
    end
  end
end
