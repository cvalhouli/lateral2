class CreateManhattans < ActiveRecord::Migration
  def change
    create_table :manhattans do |t|
      t.string :name

      t.timestamps
    end
  end
end
