class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.references :user, foreign_key: true
      t.integer :points
          t.string :date

      t.timestamps
    end
  end
end
