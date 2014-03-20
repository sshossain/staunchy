class WelcomeController < ApplicationController

	def index
  	@products = Product.on_sale.in_stock
	end

	def about
		
	end

end
