class RemoveShipId < ActiveRecord::Migration[6.1]
  def change
    remove_column :pirates, :ship_id, :string
  end
end
