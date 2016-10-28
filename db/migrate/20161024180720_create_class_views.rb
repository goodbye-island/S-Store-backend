class CreateClassViews < ActiveRecord::Migration
  def change
    create_table :class_views do |t|

      t.timestamps null: false
    end
  end
end
