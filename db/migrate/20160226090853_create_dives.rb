class CreateDives < ActiveRecord::Migration
  def change
    create_table :dives do |t|
      t.integer :number
      t.date :date
      t.time :timein
      t.time :timeout
      t.integer :depth
      t.integer :air_start
      t.integer :air_end
      t.string :nitrox
      t.string :temperature
      t.integer :weight
      t.string :computer

      t.timestamps null: false
    end
  end
end
