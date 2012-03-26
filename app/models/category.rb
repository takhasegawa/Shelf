class Category < ActiveRecord::Base

  has_many :books, :dependent => :nullify
  validates :name,:color, :presence => true

end
