class CreateUrbanEagles < ActiveRecord::Migration
  def change
    create_table :urban_eagles do |t|

      t.timestamps
    end
  end
end
