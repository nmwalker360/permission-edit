class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :package_type
      t.integer :quantity
      t.decimal :length
      t.decimal :width
      t.decimal :height
      t.text :measurement
      t.decimal :weight
      t.text :wcategory

      t.timestamps null: false
    end
  end
end
