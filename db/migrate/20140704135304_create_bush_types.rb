class CreateBushTypes < ActiveRecord::Migration
  def change
    create_table :bush_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
