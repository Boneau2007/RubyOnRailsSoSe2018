class Userprofile < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :answers
  has_many :questions, dependent: :destroy
  #validates :name, presence: true
  #validates :firstname, presence: true

  def avatar_attachment_path
    image.attached? ? image : 'default_userprofile.jpg'
  end
end
