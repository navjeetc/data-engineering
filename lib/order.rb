# namespaced Order
module Custom
	# Represents a line item in the uploaded order data file
	class Order
		attr_accessor :purchaser_name 
		attr_accessor :item_description
		attr_accessor :item_price
		attr_accessor :purchase_count
		attr_accessor :merchant_address
		attr_accessor :merchant_name

	end
end