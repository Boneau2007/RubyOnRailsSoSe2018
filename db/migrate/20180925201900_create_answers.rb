class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :text, :limit => 511, :null => false
      t.integer :positiv_rating
      t.integer :negative_rating
      t.boolean :staranswer
      t.references :question, foreign_key: true
      t.references :answer, foreign_key: true
      t.timestamps
    end
  end
end
