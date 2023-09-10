class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.text :configuration_url
      t.string :configuration_tag
      t.text :execution_url
      t.string :execution_tag
      t.string :name

      t.timestamps
    end
  end
end
