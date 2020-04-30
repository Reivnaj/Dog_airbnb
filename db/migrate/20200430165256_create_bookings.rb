class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.belongs_to :dog, index: true
      t.belongs_to :stroll, index: true
      t.timestamps
    end
  end
end
