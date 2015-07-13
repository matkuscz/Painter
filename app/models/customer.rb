class Customer < ActiveRecord::Base
  belongs_to :address_id
  has_many :contracts
end
