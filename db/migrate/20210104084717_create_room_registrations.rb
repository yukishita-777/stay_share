class CreateRoomRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :room_registrations do |t|
      t.integer :room_id
      t.integer :registration_id
      t.timestamps
    end
  end
end
