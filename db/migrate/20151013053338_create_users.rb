class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :family_name
      t.string :first_name
      t.integer :age
      t.string :prefecture

      t.timestamps null: false
    end
  end
end
