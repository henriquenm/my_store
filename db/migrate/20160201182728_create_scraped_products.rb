class CreateScrapedProducts < ActiveRecord::Migration
  def change
    create_table :scraped_products do |t|
      t.references :manufacturer

      t.string :code, limit: 20, null: false
      t.string :category
      t.string :subcategory
      t.string :description
      t.decimal :price, precision: 9, scale: 2, null: false, default: 0.0
      t.integer :points, null: false, default: 0

      t.boolean :processed, null: false, default: false
      t.datetime :processed_at

      t.timestamps null: false
      t.datetime :deleted_at
    end

    add_index :scraped_products, [:manufacturer_id]
    add_index :scraped_products, [:manufacturer_id, :code]
  end
end
