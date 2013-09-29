class Pin < ActiveRecord::Base
  #check rails validations for other validations
  validates :description, presence: true
  

end
