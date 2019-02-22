class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project
  
  validates :name,    presence: true
  validates :user_id, presence: true
  validates :project_id, presence: true
  
end