class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :style
      t.string :sex
      t.string :name

      t.timestamps
    end
  end
end
