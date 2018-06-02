class CreateEquipment < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment do |t|
      t.string :title
      t.string :description
      t.string :image
      t.integer :owner_id
      t.integer :categories_id

      t.timestamps
    end
  end
end
