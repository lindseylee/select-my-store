class CreateStoreStyles < ActiveRecord::Migration
  def change
    create_table :store_styles do |t|
      t.integer :store_id
      t.integer :style_id

      t.timestamps
    end
  end
end
