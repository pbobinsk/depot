class Product < ActiveRecord::Base
  
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
# 
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }

#  validates_length_of :title, :minimum => 10, :too_short => "jojo"
  validates :title, :length => {:minimum => 10, :message => I18n.translate('errors.messages.too_short')}

  def self.latest
    Product.order(:updated_at).last
  end

end
