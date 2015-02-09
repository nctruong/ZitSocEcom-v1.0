class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.string :title
      t.text :description
      t.string :address
      t.string :phone
      t.string :fax
      t.boolean :visible, default: true
      t.references :creator, references: :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :warehouses, :users, column: :creator_id
  end
end
