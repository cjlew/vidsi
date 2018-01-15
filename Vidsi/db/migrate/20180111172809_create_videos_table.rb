class CreateVideosTable < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.integer :provider_id, null: false
      t.string :title, null: false

      t.timestamps
    end
    add_index :videos, :provider_id
  end
end
