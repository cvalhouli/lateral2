class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :property_type
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :marketvalue
      t.string :mortgageamount
      t.string :mortgageAPR
      t.string :mortgagetype

      t.timestamps
    end
  end
end
