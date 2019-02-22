class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks
  
  validates :name,    presence: true
  validates :user_id, presence: true

#  scope :sele, -> (current_user) { where(user_id: current_user.id) }
end
