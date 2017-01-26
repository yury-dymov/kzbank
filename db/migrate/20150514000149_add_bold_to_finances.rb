class AddBoldToFinances < ActiveRecord::Migration
  def change
    add_column :finances, :bold, :boolean
  end
end
