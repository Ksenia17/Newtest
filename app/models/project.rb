class Project < ApplicationRecord
  belongs_to :user, optional: true
  has_many :tasks, dependent: :destroy
  
  validates :name,    presence: true

end
