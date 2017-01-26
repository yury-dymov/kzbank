class CreateMiscElems < ActiveRecord::Migration
  def change
    create_table :misc_elems do |t|
      t.belongs_to :misc_block, index: true
      t.string :title
      t.float :value
      t.string :color

      t.timestamps null: false
    end
    add_foreign_key :misc_elems, :misc_blocks
  end
end
