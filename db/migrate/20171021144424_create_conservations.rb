class CreateConservations < ActiveRecord::Migration[5.1]
  def change
    create_table :conservations do |t|
      t.string :user1
      t.string :user2
      t.string :name

      t.timestamps
    end
  end
end
