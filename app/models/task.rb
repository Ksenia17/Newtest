class Task < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :project, optional: true
  
  validates :name,    presence: true
  validates :user_id, presence: true
  validates :project_id, presence: true

end
