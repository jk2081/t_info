class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :name
      t.references :garden, index: true

      t.timestamps
    end
  end
end
