class StoreController < ApplicationController

  skip_before_action :authorize

  include CurrentCart 
  before_action :set_cart

  include StoreHelper
  def index
    @count = increment_count
    @count_message = "You've accessed this page #{view_context.pluralize(@count , 'time')}" if session[:counter] > 5
    @products = Product.order(:title)
  end
end
