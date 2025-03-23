class Shop < ApplicationRecord
  has_many :users
  has_many :products
  has_many :sales
  has_many :purchases
  has_many :expenses
  has_many :damages
  has_many :reports
end
