class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
end

    def create

      ### create a product here.
    end

private

def product_params
  params.require(:product).permit(:name, :price, :company_id)
end

end
