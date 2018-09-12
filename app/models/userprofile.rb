class Userprofile < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :questions
  validates :name, presence: true
  validates :firstname, presence: true
end
