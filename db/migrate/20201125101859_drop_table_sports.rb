class DropTableSports < ActiveRecord::Migration[6.0]
  def change
    drop_table :sports
    drop_table :user_sports
  end
end
