class AddSportIconToSports < ActiveRecord::Migration[6.0]
  def change
    add_column :sports, :sport_icon, :string
  end
end
