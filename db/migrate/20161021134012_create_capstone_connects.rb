class CreateCapstoneConnects < ActiveRecord::Migration
  def change
    create_table :capstone_connects do |t|

      t.timestamps null: false
    end
  end
end
