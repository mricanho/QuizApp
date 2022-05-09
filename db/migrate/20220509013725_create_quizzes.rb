class CreateQuizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.string :category
      t.references :author

      t.timestamps
    end
  end
end
