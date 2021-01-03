class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.text :room_introduction
      t.integer :fee
      t.text :address
      t.string :image

      t.timestamps
    end
  end
end
