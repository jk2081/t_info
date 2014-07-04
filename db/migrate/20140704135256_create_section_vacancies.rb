class CreateSectionVacancies < ActiveRecord::Migration
  def change
    create_table :section_vacancies do |t|
      t.integer :num_plants
      t.datetime :date_of_count
      t.float :vacancy
      t.references :section, index: true

      t.timestamps
    end
  end
end
