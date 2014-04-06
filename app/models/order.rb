require 'order_processor'

# This class represents the orders uploaded for a company
# An order can have many line items
class Order < ActiveRecord::Base
	belongs_to 	:company
	has_many 		:line_items, dependent: :destroy

	scope :recent, :order => "created_at  DESC"

	# Extracts the line items from the <i>orders_data</i> file passed in
	# and saves them
	def extract_line_items(orders_data)
		#TODO rename FileReader class as it does more than read
		# more like OrderProcessor
		order_processor = OrderProcessor.new(orders_data)
		line_items = order_processor.read_data
		db_orders = []
		line_items.each do |line_item|
			self.line_items  << LineItem.new(purchaser_name: line_item.purchaser_name,
				item_description: line_item.item_description,
				item_price: line_item.item_price,
				purchase_count: line_item.purchase_count)
		end
		self.save
	end

	# Returns the gross revenue for the order
	def gross_revenue
		self.line_items.collect{|li| li.item_price*li.purchase_count}.sum
	end
end
