class RemoveValidationsFromProperties < ActiveRecord::Migration[5.2]
  def up
    change_column :properties, :year_construction, :integer, null: true
    change_column :properties, :toilet_count, :integer, null: true
    change_column :properties, :garage_count, :integer, null: true
    change_column :properties, :plot_area, :integer, null: true
  end

  def down
    change_column :properties, :year_construction, :integer, :default => 0, null: false
    change_column :properties, :toilet_count, :integer, :default => 0, null: false
    change_column :properties, :garage_count, :integer, :default => 0, null: false
    change_column :properties, :plot_area, :integer, :default => 0.0, null: false
  end
end
