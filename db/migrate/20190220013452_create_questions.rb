class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.string :desc
      t.text :context
      t.timestamps null: false
    end
  end
end

