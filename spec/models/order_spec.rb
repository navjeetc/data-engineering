require 'spec_helper'

describe Order do
	it "should create an order with line items matching line items in data file" do
		order = build(:order)
		data_file_path = "#{Rails.root}/example_input.tab" 
		line_count = File.foreach(data_file_path).inject(0) {|c, line| c+1}
		data_file = File.open(data_file_path)
		order.extract_line_items(data_file)

		expect(order.line_items.size).to eq(line_count-1) #first line is header 
	end
	
end
