module StoreHelper

  def increment_count
    session[:counter] ||= 0
    session[:counter] += 1
  end

end
