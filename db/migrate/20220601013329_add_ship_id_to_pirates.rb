class AddShipIdToPirates < ActiveRecord::Migration[6.1]
  def change
    add_column :pirates, :ship_id, :integer
  end
end
