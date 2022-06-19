class ReturnColumnToShipType < ActiveRecord::Migration[6.1]
  def change
    rename_column :ships, :class, :ship_type
  end
end
