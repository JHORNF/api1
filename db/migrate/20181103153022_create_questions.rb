rails class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :id
      t.string :name
      t.string :description
      t.integer :point
      t.string :image
      t.boolean :state

      t.timestamps
    end
  end
end
