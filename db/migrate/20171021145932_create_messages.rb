class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :sender
      t.string :avatar
      t.string :content
      t.references :conservation, foreign_key: true

      t.timestamps
    end
  end
end
