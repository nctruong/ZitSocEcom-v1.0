class CreateSupplierPaidLogs < ActiveRecord::Migration
  def change
    create_table :supplier_paid_logs do |t|
      t.references :supplier, index: true
      t.integer :beforepaid, default: 0
      t.integer :paid, default: 0
      t.integer :afterpaid, default: 0
      t.text :note
      t.references :creator, references: :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :supplier_paid_logs, :suppliers
    add_foreign_key :supplier_paid_logs, :users, column: :creator_id
  end
end
