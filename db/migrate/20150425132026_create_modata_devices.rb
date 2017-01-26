class CreateModataDevices < ActiveRecord::Migration
  def self.up
    create_table :modata_devices do |t|
      t.string  :device
      t.integer :state
      t.datetime :last_sync_timestamp
    end
  end

  def self.down
    drop_table :modata_devices
  end
end
