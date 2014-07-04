class CreateGardens < ActiveRecord::Migration
  def change
    create_table :gardens do |t|
      t.string :name
      t.references :garden_group, index: true

      t.timestamps
    end
  end
end
