class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :website
      t.string :image
      t.integer :min
      t.integer :max
      t.text :description

      t.timestamps
    end
  end
end
