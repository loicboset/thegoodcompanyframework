class CreateProjectConcepts < ActiveRecord::Migration[6.0]
  def change
    create_table :project_concepts do |t|
      t.references :project, null: false, foreign_key: true
      t.references :concept, null: false, foreign_key: true

      t.timestamps
    end
  end
end
