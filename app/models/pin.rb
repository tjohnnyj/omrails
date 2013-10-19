class Pin < ActiveRecord::Base
  #check rails validations for other validations
  belongs_to :user
  # has to be before the validation in the model file.
  has_attached_file :image, styles: { medium: "320x240>"}

  validates :description, presence: true
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
                              content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
                              size: { less_than: 5.megabytes }

  

end
