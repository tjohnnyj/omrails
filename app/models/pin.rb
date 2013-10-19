class Pin < ActiveRecord::Base
  #check rails validations for other validations
  validates :description, presence: true
  
  belongs_to :user
  validates :user_id, presence: true
end
