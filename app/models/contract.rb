class Contract < ActiveRecord::Base
  belongs_to :customer
  belongs_to :constract_type
  belongs_to :user
end
