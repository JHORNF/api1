class CreateChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :challenges do |t|
      t.references :question, foreign_key: true
      t.string :name
      t.integer :time
      t.integer :points
      t.boolean :state

      t.timestamps
    end
  end
end
