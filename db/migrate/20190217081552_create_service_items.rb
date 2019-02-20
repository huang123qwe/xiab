class CreateServiceItems < ActiveRecord::Migration
  def change
    create_table :service_items do |t|
      t.string :name
      t.integer :service_oid
      t.text :content
      t.string :desc
      t.timestamps null: false
    end
  end
end
