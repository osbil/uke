class ProductsController < ApplicationController
	def index
		@products = Product.where(:is_sold => false).order("created_at DESC")
	end

	def show
		@product = Product.find(params[:id])
		  if @product.is_sold
      flash[:warning] = "This Product already archieved"
      redirect_to root_path
    end
	end

	def add_to_cart
		@product = Product.find(params[:id])
		current_cart.add_product_to_cart(@product)
		flash[:notice] = "成功加入购物车"
		redirect_to :back
	end
end
