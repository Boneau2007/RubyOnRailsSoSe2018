class Answer < ApplicationRecord
  belongs_to :userprofile
  belongs_to :question 
  #An anwer has many Comments
  has_many :comments, class_name: "Answer"
end
