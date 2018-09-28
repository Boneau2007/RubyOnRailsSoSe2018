class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_one_attached :cover
  #has_many :question_categories
  belongs_to :user
  has_and_belongs_to_many :categories
  validates :topic, presence: true
  validates :text, presence: true
def cover_attachment_path
  cover.attached? ? cover : 'default.jpg'
end

end
