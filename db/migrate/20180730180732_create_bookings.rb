class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.boolean :status
      t.date :start_date
      t.date :end_date
      t.references :animal, foreign_key: true
      t.references :flat, foreign_key: true

      t.timestamps
    end
  end
end
