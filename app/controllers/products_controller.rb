class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  private
  def products_params
    params.require(:product).permit(:user_id)
  end
end
