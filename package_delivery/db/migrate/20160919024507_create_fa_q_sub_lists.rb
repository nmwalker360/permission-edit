class CreateFaQSubLists < ActiveRecord::Migration
  def change
    create_table :fa_q_sub_lists do |t|
      t.string :SubFaqQuestion
      t.text :SubFaqAnswer
      t.integer :FaqMainLstId

      t.timestamps null: false
    end
  end
end
