class Product < ApplicationRecord
  belongs_to :shop
  has_many :sales
  has_many :purchases
  has_many :damages

end
