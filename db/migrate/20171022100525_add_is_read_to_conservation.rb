class AddIsReadToConservation < ActiveRecord::Migration[5.1]
  def change
    add_column :conservations, :is_read, :string
  end
end
