require 'nkf'

class Category < ActiveRecord::Base

  has_many :books, :dependent => :nullify

  before_validation :normalize_value
  
  validates :name,:color, :presence => true
  validates :name,  :uniqueness => { :case_sensitive => false }
  
  private
  def normalize_value 
    if name.present?
      self.name = NKF.nkf("-WwZ", name)
      self.name.strip!
    end
  end  
  
end
