class CreateYieldCategories < ActiveRecord::Migration
  def change
    create_table :yield_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
