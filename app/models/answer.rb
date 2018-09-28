class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  validates :text, presence: true
  has_many :comments, class_name: "Answer", foreign_key: "answer_id"
  belongs_to :answer, class_name: "Answer", optional: true
end
