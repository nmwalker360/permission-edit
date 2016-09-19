class CreateFaQMainLists < ActiveRecord::Migration
  def change
    create_table :fa_q_main_lists do |t|
      t.string :FaqMainName

      t.timestamps null: false
    end
  end
end
