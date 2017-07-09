class AddImageNameToCocktail < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :image_name, :string
  end
end
