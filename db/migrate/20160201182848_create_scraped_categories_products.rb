class CreateScrapedCategoriesProducts < ActiveRecord::Migration
  def change
    create_table :scraped_categories_products do |t|
      t.belongs_to :scraped_product
      t.belongs_to :scraped_category
    end
  end
end
