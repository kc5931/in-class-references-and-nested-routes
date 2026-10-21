class CreateArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :artists do |table|
      table.string :name, null: false
      table.string :genre, null: false
      table.timestamps
    end
  end
end
