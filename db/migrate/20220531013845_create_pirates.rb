class CreatePirates < ActiveRecord::Migration[6.1]
  def change
    create_table :pirates do |t|
      t.string :name
      t.string :ship
      t.string :title
      t.string :status
      t.string :notoriety
      t.timestamps
    end
  end
end
