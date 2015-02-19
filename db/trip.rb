class Trip < ActiveRecord::Base

  belongs_to :season
  has_many :items
  belongs_to :city

end
