class CreateIndications < ActiveRecord::Migration
  def change
    create_table :indications do |t|
      t.belongs_to :exchange, index: true
      t.float :current_value
      t.float :opening_value
      t.float :min_value
      t.float :max_value
      t.datetime :date

      t.timestamps null: false
    end
    add_foreign_key :indications, :exchanges
  end
end
