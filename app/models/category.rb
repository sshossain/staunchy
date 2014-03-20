class Category < ActiveRecord::Base

	has_many :products

	def products_on_sale
		products.on_sale.in_stock
	end

end
