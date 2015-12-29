class AddCategoryToContainers < ActiveRecord::Migration
  def change
    add_column :containers, :category, :string
  end
end
