class CreateJoinTableStoreStyle < ActiveRecord::Migration
  def change
    create_join_table :stores, :styles do |t|
      t.references :store, :null => false
      t.references :style, :null => false
      t.index [:store_id, :style_id]
      t.index [:style_id, :store_id]
    end
  end
end
