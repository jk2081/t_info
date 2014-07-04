class CreateSectionYields < ActiveRecord::Migration
  def change
    create_table :section_yields do |t|
      t.integer :budget
      t.integer :actual
      t.string :year
      t.references :section, index: true

      t.timestamps
    end
  end
end
