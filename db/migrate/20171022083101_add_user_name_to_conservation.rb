class AddUserNameToConservation < ActiveRecord::Migration[5.1]
  def change
    add_column :conservations, :user1_name, :string
    add_column :conservations, :user2_name, :string
  end
end
