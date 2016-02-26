class AddUserToDives < ActiveRecord::Migration
  def change
    add_reference :dives, :user, index: true, foreign_key: true
  end
end
