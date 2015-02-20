class Trip < ActiveRecord::Base

  belongs_to :season
  belongs_to :city
  has_many :items

end
