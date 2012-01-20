class Category < ActiveRecord::Base

  has_many :books
  validates :name,:color, :presence => true

end
