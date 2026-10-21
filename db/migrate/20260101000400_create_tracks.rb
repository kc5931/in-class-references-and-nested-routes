class CreateTracks < ActiveRecord::Migration[7.1]
  def change
    create_table :tracks do |table|
      table.string :title, null: false
      table.integer :length_sec, null: false
      table.references :artist, null: false, foreign_key: { on_delete: :restrict, on_update: :cascade }
      table.timestamps
    end
  end
end
