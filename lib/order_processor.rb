require 'csv'
require 'order'

# This class reads a tab delimited data file,
# parses the order data and returns an array
# of orders
#
# Author::    Navjeet Chabbewal  (mailto:navjeetc@gmail.com)
class OrderProcessor

	# initialized data file path
	def initialize(file_path=nil)
		@data_file = file_path
	end

	# reads each line of data from tab delimited data file
	def read_data
		index = 0
		orders = []
		CSV.parse(@data_file.read()) do |row|
			if index == 0
				#header row
				@columns = parse_columns(row[0])
				# p @columns
			else
				# p row[0]
  			data = row[0].split("\t")
  			orders << parse_order(data) 
			end
  		index += 1
		end
		return orders
	end

	# Extracts line items from order row
	def extract_order_line(row, index)
		if index == 0
				#header row
				@columns = parse_columns(row)
				p @columns
		else
			# p row[0]
			data = row.split("\t")
			order = parse_order(data) 
			p order 
		end
	end

	# parses order data and returns the order
	def parse_order(data)
		order = Custom::Order.new
		@columns.each do |column_name, index|
			setter_method_name = column_name.downcase.tr(' ','_') + "="
			order.send setter_method_name.to_sym, data[index].strip if order.respond_to?(setter_method_name.to_sym)
		end
		return order
	end
	# maps column names to their position (starting postion is 0)
	def parse_columns(row_data)
		columns = {}
		row_data.split("\t").each_with_index do |column_name, index|
			columns[column_name] = index
		end
		return columns
	end
end

#reader = OrderProcessor.new("./example_input.tab")
#reader.read_data
