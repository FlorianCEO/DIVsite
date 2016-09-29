class AddSoustitreToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :soustitre, :string
  end
end
