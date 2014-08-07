class PayType < ActiveRecord::Base
  has_many :order
  attr_accessible :name
end
