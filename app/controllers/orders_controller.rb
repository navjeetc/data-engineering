# This class is responsible for getting list of companies and their 
# order details. It also creates an order with line items for a company
class OrdersController < ApplicationController

	# Sets the list companies in an instance variable 
	def index
		@companies = Company.all
	end

	# Creates an instance of company if not already set
	def upload
		@company ||= Company.new
	end

	# Creates the company based on name passed in parameters, if 
	# the company does not exist in the database with that name.
	# Also creates an order for company and line items extracted
	# from the uploaded file, in the order
	# If company name is not provided or no file was uploaded, it sends
	# appropriate feedback to the user displayed on upload form
	def create
		@company = Company.find_or_create_by(name: params[:company][:name])
		if @company.valid?
			orders_file_data = params[:company][:orders]
			if orders_file_data.present?
				#TODO In future do this asynchronously
				order = Order.create
				order.parse_orders(orders_file_data)
				@company.orders << order
				@company.save

				@companies = Company.all
				render :index
			else
				@company = Company.new(name: params[:company][:name])
				flash[:error] = "No file selected to upload"
				render :upload
			end
		else
			render :upload
		end
	end

end
