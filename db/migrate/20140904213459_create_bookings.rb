class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :listing
      t.datetime :booked_from
      t.datetime :booked_to
      t.integer :price
      t.timestamps
    end
  end
end
