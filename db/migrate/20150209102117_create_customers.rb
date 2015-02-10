class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :code
      t.string :title
      t.string :address
      t.string :phone
      t.string :fax
      t.string :email
      t.string :taxcode
      t.integer :debit, default: 0
      t.boolean :visible, default: true
      t.references :creator, references: :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :customers, :users, column: :creator_id
  end
end
