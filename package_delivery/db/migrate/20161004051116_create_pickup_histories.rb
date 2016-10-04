class CreatePickupHistories < ActiveRecord::Migration
  def change
    create_table :pickup_histories do |t|
      t.string :condition
      t.integer :EmployeeId
      t.integer :PickupId

      t.timestamps null: false
    end
  end
end
