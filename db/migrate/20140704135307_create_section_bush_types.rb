class CreateSectionBushTypes < ActiveRecord::Migration
  def change
    create_table :section_bush_types do |t|
      t.string :year
      t.references :section, index: true
      t.references :bush_type, index: true

      t.timestamps
    end
  end
end
