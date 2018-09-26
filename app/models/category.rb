class Category < ApplicationRecord
  has_many :questions, :through => :question_categories
end
