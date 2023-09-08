class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :configuration_url
      t.string :configuration_tag
      t.string :execution_url
      t.string :execution_tag
      t.string :name

      t.timestamps
    end
  end
end
