class CreateSectionDivisions < ActiveRecord::Migration
  def change
    create_table :section_divisions do |t|
      t.string :year
      t.references :section, index: true
      t.references :division, index: true

      t.timestamps
    end
  end
end
