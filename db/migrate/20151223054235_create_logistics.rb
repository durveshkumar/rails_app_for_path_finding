class CreateLogistics < ActiveRecord::Migration
  def change
    create_table :logistics do |t|

      t.timestamps null: false
    end
  end
end
