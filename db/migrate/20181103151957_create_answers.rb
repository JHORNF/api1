class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :id  
      t.string :description
      t.boolean :state
      t.boolean :stateDrop

      t.timestamps
    end
  end
end
