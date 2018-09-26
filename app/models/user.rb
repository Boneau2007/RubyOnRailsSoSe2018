class User < ApplicationRecord

  has_one :userprofile, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 after_create :init_userprofile

  def init_userprofile
    self.create_userprofile.save(validate: false)
  end
end
