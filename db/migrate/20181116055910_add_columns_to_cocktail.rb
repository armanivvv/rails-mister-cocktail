class AddColumnsToCocktail < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :category, :string
    add_column :cocktails, :description, :string
    add_column :cocktails, :history, :string
    add_column :cocktails, :photo, :string
  end
end
