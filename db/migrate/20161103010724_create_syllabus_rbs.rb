class CreateSyllabusRbs < ActiveRecord::Migration
  def change
    create_table :syllabus_rbs do |t|

      t.timestamps null: false
    end
  end
end
