module ApplicationHelper

  def date_loaded
    return Time.now.strftime('%F %T')
  end

end
