class CreateProvidersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :name, null: false
      t.integer :concurrent_viewer_limit, null: false

      t.timestamps
    end
  end
end
