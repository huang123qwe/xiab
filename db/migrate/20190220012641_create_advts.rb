class CreateAdvts < ActiveRecord::Migration
  def change
    create_table :advts do |t|
      t.string :name
      t.string :image
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
