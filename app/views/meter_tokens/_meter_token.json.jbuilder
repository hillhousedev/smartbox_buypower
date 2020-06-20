json.extract! meter_token, :id, :token, :meter_id, :meter_type, :device_id, :device_sim_no, :device_address, :auto_load_device_id, :created_at, :updated_at
json.url meter_token_url(meter_token, format: :json)
