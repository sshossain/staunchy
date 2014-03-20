class WelcomeController < ApplicationController

	def index
  	@products = Product.on_sale.in_stock.includes(:category).sort_by{|p| p.category.name}
	end

	def about
		
	end

end
