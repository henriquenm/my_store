# This migration comes from spree_multi_tenant (originally 20120224230816)
class AddTenantToModels < ActiveRecord::Migration
  def change
    tables = [
      "spree_addresses",
      "spree_adjustments",
      "spree_assets",
      "spree_calculators",
      "spree_countries",
      "spree_configurations",
      "spree_credit_cards",
      "spree_payment_methods",
      "spree_inventory_units",
      "spree_line_items",
      "spree_log_entries",
      "spree_option_types",
      "spree_option_values",
      "spree_orders",
      "spree_payments",
      "spree_payment_capture_events",
      "spree_preferences",
      "spree_product_option_types",
      "spree_product_properties",
      "spree_products",
      "spree_promotions",
      "spree_promotion_action_line_items",
      "spree_promotion_actions",
      "spree_promotion_rules",
      "spree_properties",
      "spree_prototypes",
      "spree_return_authorizations",
      "spree_roles",
      "spree_shipments",
      "spree_shipping_categories",
      "spree_shipping_methods",
      "spree_shipping_method_categories",
      "spree_shipping_rates",
      "spree_state_changes",
      "spree_states",
      "spree_stock_movements",
      "spree_tax_categories",
      "spree_tax_rates",
      "spree_taxonomies",
      "spree_taxons",
      "spree_trackers",
      "spree_users",
      "spree_variants",
      "spree_zone_members",
      "spree_zones"
    ]
    tables.each do |table|
      add_column table, :tenant_id, :integer
      add_index table, :tenant_id
    end
  end
end

