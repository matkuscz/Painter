class Adress < ActiveRecord::Base
	has_one :customer
end
