require 'file_reader'

class Order < ActiveRecord::Base
	belongs_to 	:company
	has_many 		:line_items, dependent: :destroy

	#TODO rename method to use term line items
	def parse_orders(orders_data)
		#TODO rename FileReader class as it does more than read
		# more like OrderProcessor
		order_processor = FileReader.new(orders_data)
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

	def gross_revenue
		self.line_items.collect{|li| li.item_price*li.purchase_count}.sum
	end
end
