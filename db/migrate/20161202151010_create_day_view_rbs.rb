class CreateDayViewRbs < ActiveRecord::Migration
  def change
    create_table :day_view_rbs do |t|

      t.timestamps null: false
    end
  end
end
