class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :name, null: false, default: ""
      t.integer :year_construction, null: false, default: 0
      t.integer :bed_count, null: false, default: 0
      t.integer :bath_count, null: false, default: 0
      t.integer :toilet_count, null: false, default: 0
      t.integer :garage_count, null: false, default: 0

      t.float :plot_area, null: false, default: 0.0
      t.float :plot_area, null: false, default: 0.0

      t.boolean :furnished, default: false
      t.boolean :sold, default: false
      t.boolean :reserved, default: false
      t.boolean :archived, default: false
      t.boolean :visible, default: false
      t.boolean :for_rent, default: false
      t.boolean :for_sale, default: false
      t.boolean :featured, default: false

      t.float :price, default: 0.0
      t.float :commission, default: 0.0

      t.string :street_no
      t.string :street_name
      t.string :address
      t.string :postal_code
      t.string :city
      t.string :province
      t.string :region
      t.string :country

      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
