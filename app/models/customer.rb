class Customer < ActiveRecord::Base
  belongs_to :adress
  has_many :contracts
end
