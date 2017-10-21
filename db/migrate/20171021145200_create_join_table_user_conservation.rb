class CreateJoinTableUserConservation < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :conservations do |t|
      t.index [:user_id, :conservation_id]
      # t.index [:conservation_id, :user_id]
    end
  end
end
