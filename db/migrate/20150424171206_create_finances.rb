class CreateFinances < ActiveRecord::Migration
  def change
    create_table :finances do |t|
      t.string :title
      t.integer :type_id

      t.timestamps null: false
    end
  end
end
