class RemoveSportsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :sports, :string
  end
end
