class User < ApplicationRecord
  has_many :projects
  has_many :tasks

  validates :first_name,  presence: true, length: { maximum: 20 }
  validates :last_name,   presence: true, length: { maximum: 30 }
  validates :password,    presence: true, length: { minimum: 6 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
