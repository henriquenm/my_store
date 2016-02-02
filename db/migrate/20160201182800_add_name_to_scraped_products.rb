class AddNameToScrapedProducts < ActiveRecord::Migration
  def change
    add_column :scraped_products, :name, :string
    change_column :scraped_products, :description, :text
  end
end
