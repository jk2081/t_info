class CreateSectionYieldCategories < ActiveRecord::Migration
  def change
    create_table :section_yield_categories do |t|
      t.string :year
      t.references :yield_category, index: true
      t.references :section, index: true

      t.timestamps
    end
  end
end
