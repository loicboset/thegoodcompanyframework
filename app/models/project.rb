class Project < ApplicationRecord
  belongs_to :user
  has_many :project_concepts, dependent: :destroy
  has_many :concepts, through: :project_concepts
end
