class Product < ActiveRecord::Base
  has_many :line_items
  has_many :orders, through: :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  attr_accessible :description, :image_url, :price, :title
  validates :title, :description, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true, length:{minimum: 10, message: 'must  be longer than 10 letters'}
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image'
  }

  private

  #ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    if line.items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end
end
