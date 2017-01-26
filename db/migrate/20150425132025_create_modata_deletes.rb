class CreateModataDeletes < ActiveRecord::Migration
  def self.up
    create_table :modata_deletes do |t|
      t.string  :table_name
      t.integer :row_id
    end
  end

  def self.down
    drop_table :modata_deletes
  end
end
