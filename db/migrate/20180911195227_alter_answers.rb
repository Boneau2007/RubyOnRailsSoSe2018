class AlterAnswers < ActiveRecord::Migration[5.2]
  def change
    add_reference :answers, :userprofile, foreign_key: true, :null => true
    add_reference :answers, :question, foreign_key: true, :null => true
  end
end
