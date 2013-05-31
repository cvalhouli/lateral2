class CreateEarlyPregnancies < ActiveRecord::Migration
  def change
    create_table :early_pregnancies do |t|
      t.string :zip
      t.string :teen_pregnancy

      t.timestamps
    end
  end
end
