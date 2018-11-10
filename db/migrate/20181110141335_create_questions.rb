class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.string :description
      t.integer :point
      t.string :image
      t.boolean :state

      t.timestamps
    end
    
    create_table :questions_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :question, index: true
    end
  end
end
