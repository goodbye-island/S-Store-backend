class CreateSemesterViews < ActiveRecord::Migration
  def change
    create_table :semester_views do |t|

      t.timestamps null: false
    end
  end
end
