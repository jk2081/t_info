class CreateSectionPruneTypes < ActiveRecord::Migration
  def change
    create_table :section_prune_types do |t|
      t.string :year
      t.references :section, index: true
      t.references :prune_type, index: true

      t.timestamps
    end
  end
end
