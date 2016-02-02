class CreateScrapedCategories < ActiveRecord::Migration
  def change
    create_table :scraped_categories do |t|
      t.references :manufacturer

      t.string :name, limit: 50, null: false

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
