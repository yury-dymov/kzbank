class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|
      t.string :title
      t.datetime :date
      t.float :value

      t.timestamps null: false
    end
  end
end
