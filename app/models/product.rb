class Product < ActiveRecord::Base
  before_save :capitalize

  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country, :presence => true
  validates :interests, :presence => true
  validates :image, :presence => true

  def capitalize
   self.name = self.name.titleize
   self.country = self.country.upcase
   self.interests = self.interests.capitalize
  end

end
