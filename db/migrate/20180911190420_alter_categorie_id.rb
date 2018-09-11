class AlterCategorieId < ActiveRecord::Migration[5.2]
  def change
    rename_column :question_categories, :categorie, :categorie_id
  end
end
