class CreateClassmodels < ActiveRecord::Migration
  def change
    create_table :classmodels do |t|

      t.timestamps null: false
    end
  end
end
