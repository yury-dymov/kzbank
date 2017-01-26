class CreateCurrencyExchanges < ActiveRecord::Migration
  def change
    create_table :currency_exchanges do |t|
      t.string :title
      t.float :value
      t.datetime :date

      t.timestamps null: false
    end
  end
end
