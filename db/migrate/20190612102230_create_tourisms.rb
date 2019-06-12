class CreateTourisms < ActiveRecord::Migration[5.2]
  def change
    create_table :tourisms do |t|

      t.timestamps
    end
  end
end
