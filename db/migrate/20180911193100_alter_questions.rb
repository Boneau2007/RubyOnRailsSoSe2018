class AlterQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :userprofile, foreign_key: true, :null => true
    add_reference :questions, :answer, foreign_key: true, :null => true
  end
end
