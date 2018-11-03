class CreateUserChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :user_challenges do |t|
      t.integer :userId
      t.integer :challengeId
      t.byte :state

      t.timestamps
    end
  end
end
