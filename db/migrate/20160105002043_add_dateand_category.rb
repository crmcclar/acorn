class AddDateandCategory < ActiveRecord::Migration
  def change
  	add_column :containers, :date, :datetime
  end
end