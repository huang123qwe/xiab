class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :image
      t.text :context
      t.string :name
      t.timestamps null: false
    end
  end
end
