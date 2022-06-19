class RenameShipsColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :ships, :ship_type, :type
  end
end
