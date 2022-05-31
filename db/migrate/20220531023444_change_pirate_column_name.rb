class ChangePirateColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :pirates, :ship, :ship_name
  end
end
