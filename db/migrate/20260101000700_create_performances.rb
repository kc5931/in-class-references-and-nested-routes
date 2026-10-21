class CreatePerformances < ActiveRecord::Migration[7.1]
  def change
    create_table :performances do |table|
      table.datetime :starts_at, null: false
      table.references :stage, null: false, foreign_key: { on_delete: :restrict, on_update: :cascade }
      table.references :artist, null: false, foreign_key: { on_delete: :restrict, on_update: :cascade }
      table.timestamps
    end
  end
end
