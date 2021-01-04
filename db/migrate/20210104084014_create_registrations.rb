class CreateRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :registrations do |t|
      t.integer :user_id
      t.date :start_day
      t.date :finish_day
      t.integer :number
      t.timestamps
    end
  end
end
