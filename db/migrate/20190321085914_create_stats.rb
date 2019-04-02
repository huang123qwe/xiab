class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :ip
      t.string :addr
      t.string :path
      t.string :token
      t.string :ua

      t.timestamps null: false
    end
  end
end
