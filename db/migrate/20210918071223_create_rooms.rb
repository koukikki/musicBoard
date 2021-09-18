class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :title,        null: false
      t.string :artist,       null: false
      t.integer :year,        null: false
      t.integer :month,       null: false
      t.integer :day,         null: false
      t.references :user,     null: false,foreign_key: true

      t.timestamps
    end
  end
end
