class CreateIntros < ActiveRecord::Migration
  def change
    create_table :intros do |t|
      t.string :name
      t.string :tel
      t.string :desc
      t.string :user
      t.string :image
      t.string :addr
      t.string :email
      t.text    :context
      t.timestamps null: false
    end
    execute <<-SQL
    insert intros(name, tel, `desc`, user, image, context, created_at, updated_at) 
    	value ('无锡盛世市政管道工程有限公司', '111111', 'desc', 'xia', 'image', 'context', now(), now()) 
    SQL
  end

end
