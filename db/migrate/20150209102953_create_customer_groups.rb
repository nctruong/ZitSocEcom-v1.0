class CreateCustomerGroups < ActiveRecord::Migration
  def change
    create_table :customer_groups do |t|
      t.string :title
      t.text :description
      t.integer :reduce_percent, default: 0
      t.boolean :visible, default: true
      t.references :creator, references: :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :customer_groups, :users, column: :creator_id
  end
end
