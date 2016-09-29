class CreateProjets < ActiveRecord::Migration
  def change
    create_table :projets do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
