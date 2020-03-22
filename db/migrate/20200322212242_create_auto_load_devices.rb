class CreateAutoLoadDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :auto_load_devices do |t|
      t.string :name
      t.string :meter_type
      t.string :address
      t.string :phone_no
      t.string :meter_id
      t.references :token, foreign_key: true

      t.timestamps
    end
  end
end
