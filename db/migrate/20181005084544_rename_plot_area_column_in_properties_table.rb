class RenamePlotAreaColumnInPropertiesTable < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :constructed_area, :float, null: false, default: 0.0
  end
end
