class Project < ApplicationRecord
  belongs_to :user
  has_many :project_concepts
  has_many :concepts, through: :project_concepts
end
