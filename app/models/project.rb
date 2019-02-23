class Project < ApplicationRecord
  belongs_to :user, optional: true
  has_many :tasks, dependent: :destroy
  
  validates :name,    presence: true
  validates :user_id, presence: true

#  scope :sele, -> (current_user) { where(user_id: current_user.id) }
end
