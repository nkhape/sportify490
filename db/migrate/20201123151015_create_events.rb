class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.datetime :date
      t.integer :price
      t.integer :capacity
      t.integer :level
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
