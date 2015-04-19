class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|

    t.integer :client_id, default: 0

    t.string :name, default: ''
    t.integer :hour, default: ''
    t.string :date, default: ''
    t.integer :space_id, default: 0

      t.timestamps
    end
  end
end
