class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
