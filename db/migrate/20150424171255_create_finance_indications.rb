class CreateFinanceIndications < ActiveRecord::Migration
  def change
    create_table :finance_indications do |t|
      t.belongs_to :finance, index: true
      t.datetime :date
      t.float :value

      t.timestamps null: false
    end
    add_foreign_key :finance_indications, :finances
  end
end
