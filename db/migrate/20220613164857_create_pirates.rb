class CreatePirates < ActiveRecord::Migration[6.1]
  def change
    create_table :pirates do |t|
      t.string :name
      t.string :title
      t.string :ship_id
      t.timestamps
    end
  end
end
