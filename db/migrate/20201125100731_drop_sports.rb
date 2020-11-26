class DropSports < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :sport_id
  end
end
