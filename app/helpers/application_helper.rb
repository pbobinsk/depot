module ApplicationHelper
  def date_loaded
    return l Time.now, format: :short
  end

end
