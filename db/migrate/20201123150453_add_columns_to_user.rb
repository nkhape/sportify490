class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :sports, :string
    add_column :users, :location, :string
    add_column :users, :description, :text
  end
end
