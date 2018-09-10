class Userprofile < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :questions
  validate :name, presence: true
  validate :firstname, presence: true
end
