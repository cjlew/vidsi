class CreateCreditCard < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_cards do |t|
      t.integer :subscriber_id, null: false
      t.integer :credit_card_number, null: false

      t.timestamps
    end
    add_index :credit_cards, :subscriber_id
  end
end
