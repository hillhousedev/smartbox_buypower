class CreateMeterTokens < ActiveRecord::Migration[5.1]
  def change
    create_table :meter_tokens do |t|
      t.string :token
      t.string :meter_id
      t.string :meter_type
      t.string :device_id
      t.string :device_sim_no
      t.string :device_address
      t.references :auto_load_device, foreign_key: true

      t.timestamps
    end
  end
end
