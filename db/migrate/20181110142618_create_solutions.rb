class CreateSolutions < ActiveRecord::Migration[5.0]
  def change
    create_table :solutions do |t|
      t.belongs_to :user, index: true
      t.belongs_to :challenge, index: true
      t.integer :state
      t.timestamps
    end
  end
end
