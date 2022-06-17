class AddShipNameToPirates < ActiveRecord::Migration[6.1]
  def change
    add_column :pirates, :ship_name, :string
  end
end
