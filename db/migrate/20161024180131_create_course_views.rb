class CreateCourseViews < ActiveRecord::Migration
  def change
    create_table :course_views do |t|

      t.timestamps null: false
    end
  end
end
