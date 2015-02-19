class User < ActiveRecord::Base

  belongs_to :email
  has_many :trips

end
