class AutoLoadDevice < ApplicationRecord
  #belongs_to :token
  has_many  :meter_tokens


end
