class Category < ApplicationRecord
  #has_many :question_categories
  #has_many :questions, :through => :question_categories
  has_and_belongs_to_many :questions
  validates :name, presence: true
end
