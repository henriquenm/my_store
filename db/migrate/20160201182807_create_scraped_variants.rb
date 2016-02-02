class CreateScrapedVariants < ActiveRecord::Migration
  def change
    create_table :scraped_variants do |t|
      t.references :scraped_product

      t.string :sku, limit: 20, null: false
      t.string :sku_name
      t.string :color
      t.string :size
      t.decimal :price, precision: 9, scale: 2, null: false, default: 0.0

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
