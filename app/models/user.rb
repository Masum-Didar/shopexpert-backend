class User < ApplicationRecord
  belongs_to :shop
  has_many :sales
end
