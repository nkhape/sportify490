class RemoveColumnSportid < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_sports, :sport_id
  end
end
