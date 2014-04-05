class OrdersController < ApplicationController

	def index
		
	end

	def menu
	end

	def upload
		

	end

	def create

		company = Company.find_or_create_by(name: params[:company_name])

		orders_file_data = params[:orders]
		#TODO In future do this asynchronously
		order = Order.create
		order.parse_orders(orders_file_data)
		company.orders << order
		company.save

		flash[:notice] = "Orders are being saved for company #{company.name.upcase} and will be available soon."
		render :menu
	end

end
