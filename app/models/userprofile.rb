class Userprofile < ApplicationRecord
  belongs_to :user
  validate :name, presence: true
  validate :firstname, presence: true
end
