class StoreController < ApplicationController
  def index
    #@count = increment_count
    @products = Product.order(:title)
  end
end
