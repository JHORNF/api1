class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.integer :id
      t.string :description
      t.boolean :state

      t.timestamps
    end
  end
end
