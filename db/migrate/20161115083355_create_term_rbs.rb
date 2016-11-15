class CreateTermRbs < ActiveRecord::Migration
  def change
    create_table :term_rbs do |t|

      t.timestamps null: false
    end
  end
end
