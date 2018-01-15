class CreateUsersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :subscribers do |t|
      t.string :username, null: false
      t.string :subscription_type, null: false
      t.integer :streaming_limit, null: false
      t.string :password_digest, null: false

      t.timestamps

    end
  end
end
