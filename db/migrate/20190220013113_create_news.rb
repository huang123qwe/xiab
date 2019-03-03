class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :name
      t.string :image
   	  t.text   :context
      t.timestamps null: false
    end
  end
end
