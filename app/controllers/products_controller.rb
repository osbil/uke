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
end
