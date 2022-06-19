class RenameShipsColumnNew < ActiveRecord::Migration[6.1]
  def change
    rename_column :ships, :type, :class
  end
end
