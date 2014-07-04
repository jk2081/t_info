class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :code
      t.string :name
      t.float :area
      t.string :yop_start
      t.string :yop_end
      t.references :garden, index: true

      t.timestamps
    end
  end
end
