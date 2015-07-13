class Contract < ActiveRecord::Base
  belongs_to :customer
  belongs_to :contract_type
  belongs_to :user
end
