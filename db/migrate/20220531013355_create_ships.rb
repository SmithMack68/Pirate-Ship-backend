class CreateShips < ActiveRecord::Migration[6.1]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :ship_type
      t.string :ranking
      t.string :status
      t.timestamps
    end
  end
end
