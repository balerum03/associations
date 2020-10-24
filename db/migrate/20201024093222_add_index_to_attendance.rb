class AddIndexToAttendance < ActiveRecord::Migration[6.0]
  def change
    add_index :attendances, :user_id
    add_index :attendances, :event_id
  end
end
