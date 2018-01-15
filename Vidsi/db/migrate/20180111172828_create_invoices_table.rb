class CreateInvoicesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.integer :subscriber_id, null: false
      t.integer :balance, null: false
      t.datetime :due_date, null: false
      t.string :status, null: false

      t.timestamps
    end
    add_index :invoices, :subscriber_id
  end
end
