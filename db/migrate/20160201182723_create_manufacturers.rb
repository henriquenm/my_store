class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name, limit: 50, null: false

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
