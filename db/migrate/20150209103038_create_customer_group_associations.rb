class CreateCustomerGroupAssociations < ActiveRecord::Migration
  def change
    create_table :customer_group_associations do |t|
      t.references :customer, index: true
      t.references :customer_group, index: true

      t.timestamps null: false
    end
    add_foreign_key :customer_group_associations, :customers
    add_foreign_key :customer_group_associations, :customer_groups
  end
end
