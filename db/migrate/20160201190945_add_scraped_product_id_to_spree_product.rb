class AddScrapedProductIdToSpreeProduct < ActiveRecord::Migration
  def change
    add_column :spree_products, :scraped_product_id, :integer
  end
end
