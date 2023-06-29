class CreateApartmentts < ActiveRecord::Migration[7.0]
  def change
    create_table :apartmentts do |t|
      t.integer :number

      t.timestamps
    end
  end
end
