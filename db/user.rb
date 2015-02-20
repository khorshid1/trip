class User < ActiveRecord::Base

  belongs_to :email
  has_many :trips
  has_many :packs
  has_many :cities
  has_many :items

end
