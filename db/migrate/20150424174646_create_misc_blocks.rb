class CreateMiscBlocks < ActiveRecord::Migration
  def change
    create_table :misc_blocks do |t|
      t.integer :screen_id
      t.string :title

      t.timestamps null: false
    end
  end
end
