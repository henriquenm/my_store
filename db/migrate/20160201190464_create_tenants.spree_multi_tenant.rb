# This migration comes from spree_multi_tenant (originally 20120224001629)
class CreateTenants < ActiveRecord::Migration
  def change
    create_table :spree_tenants do |t|
      t.string :domain
      t.string :code

      t.timestamps
    end
  end
end
