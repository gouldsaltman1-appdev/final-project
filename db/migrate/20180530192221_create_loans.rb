class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.integer :equipment_id
      t.integer :borrower_id
      t.integer :owner_id
      t.datetime :start_time
      t.datetime :end_time
      t.string :pickupdropoff_location

      t.timestamps
    end
  end
end
