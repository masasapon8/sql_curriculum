class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.date :date
      t.integer :start_time
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
