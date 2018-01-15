class CreateStreamsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :streams do |t|
      t.integer :video_id, null: false
      t.integer :subscriber_id, null: false
      t.boolean :currently_streaming, default: false

      t.timestamps
    end

    add_index :streams, :video_id
    add_index :streams, :subscriber_id

  end
end
