class CreateDeptViews < ActiveRecord::Migration
  def change
    create_table :dept_views do |t|

      t.timestamps null: false
    end
  end
end
