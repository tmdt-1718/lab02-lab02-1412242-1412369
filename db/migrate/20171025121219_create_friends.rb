class CreateFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :friends do |t|
      t.string :user1
      t.string :user2
      t.string :boolean
      t.timestamps
    end
  end
end
