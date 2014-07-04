class CreateGardenGroups < ActiveRecord::Migration
  def change
    create_table :garden_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
