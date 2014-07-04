class CreatePruneTypes < ActiveRecord::Migration
  def change
    create_table :prune_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
