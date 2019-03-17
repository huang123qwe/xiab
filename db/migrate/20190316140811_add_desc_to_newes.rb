class AddDescToNewes < ActiveRecord::Migration
  def change
  	add_column :news, :desc, :string 
  end
end
