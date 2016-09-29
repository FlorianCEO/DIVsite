class AddSlugToProjet < ActiveRecord::Migration
  def change
    add_column :projets, :slug, :string
  end
end
