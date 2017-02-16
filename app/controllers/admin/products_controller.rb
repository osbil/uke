class Admin::ProductsController < ApplicationController
	before_action :find_products, only: [:edit, :update, :destroy]


	def index
		@products = Product.all
	end

	def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def edit
	end

	def update
		if @product.update(product_params)
			redirect_to admin_products_path
		else
			render :edit
		end
	end
  private

  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price)
  end

  def find_products
  	@product = Product.find(params[:id])
  end
end
