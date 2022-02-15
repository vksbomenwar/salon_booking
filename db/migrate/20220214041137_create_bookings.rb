class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :full_name
      t.string :phone_no
      t.date :booking_date
      t.time :booking_time
      t.decimal :total_amount, precision: 12, scale: 2
      t.references :salon, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true
      t.timestamps
    end
  end
end
