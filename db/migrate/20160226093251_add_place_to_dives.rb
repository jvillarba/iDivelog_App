class AddPlaceToDives < ActiveRecord::Migration
  def change
    add_reference :dives, :place, index: true, foreign_key: true
  end
end
