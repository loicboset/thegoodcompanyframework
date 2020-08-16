class CreateConcepts < ActiveRecord::Migration[6.0]
  def change
    create_table :concepts do |t|
      t.string :name
      t.text :description
      t.text :question_1
      t.text :question_2
      t.text :question_3

      t.timestamps
    end
  end
end
