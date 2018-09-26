class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_one_attached :avatar
  has_many :categories, :through => :question_categories
end
