class AddUserReadToConservation < ActiveRecord::Migration[5.1]
  def change
    add_column :conservations, :user1_read, :string
    add_column :conservations, :user2_read, :string
  end
end
