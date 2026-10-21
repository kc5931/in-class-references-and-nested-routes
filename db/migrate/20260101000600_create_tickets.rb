class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.string  :tier
      t.integer :price_cents
      t.references :attendee, foreign_key: true
      t.references :festival, foreign_key: true
      t.timestamps
    end
  end
end
