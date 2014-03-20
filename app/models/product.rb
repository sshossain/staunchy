class Product < ActiveRecord::Base

  belongs_to :category

  scope :on_sale, -> { where(on_sale: true) }
  scope :in_stock, -> { where("quantity > 0") }

  def to_param
  	[id, name.parameterize].join("-")
  end

end
