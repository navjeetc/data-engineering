#This class represents the line items in the order uploaded
#Each line item can have the following attributes:
#
# purchaser_name
# item_description
# item_price
# purchase_count
# merchant_address
# merchant_name

class LineItem < ActiveRecord::Base
	belongs_to :order
	
end
