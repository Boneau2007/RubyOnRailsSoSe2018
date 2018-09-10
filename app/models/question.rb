class Question < ApplicationRecord
  #User can remove his Questions
  has_many :answers, dependent: :destroy
  belongs_to :userprofile
  has_many :subscribers, class_name: "Userprofile",
						 foreign_key: "userprofile_id"
  has_many :question_categories
  has_many :categories, through: :question_categories
end
