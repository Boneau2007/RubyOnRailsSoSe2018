class Answer < ApplicationRecord
  belongs_to :question
  has_many :comments, class_name: "Answer", foreign_key: "answer_id"
  belongs_to :answer, class_name: "Answer", optional: true
end
