class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.timestamps null: false
    end

    execute <<-SQL
    	insert services (name, created_at, updated_at ) values ("清理化粪池", now(), now()),
    	("清理污水池", now(), now()),("清理隔油池", now(), now()),("清理沉淀池", now(), now()),
    	("管道疏通", now(), now()),("管道检测", now(), now()),
    	("管道清洗", now(), now()),("疏通下水道", now(), now()),
    	("污水管道清洗", now(), now()),("雨水管道清洗", now(), now()),
    	("环卫所抽粪", now(), now()),("抽污泥", now(), now()),
    	("洒水车出租", now(), now())
    SQL
  end
end

