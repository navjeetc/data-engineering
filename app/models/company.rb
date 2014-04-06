# This class represents the company that can have many orders
class Company < ActiveRecord::Base
	has_many :orders

	validates_presence_of :name

	default_scope order("name ASC")
end
