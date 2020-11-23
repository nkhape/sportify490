class AddSportIdToEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :sport, null: false, foreign_key: true
  end
end
