class CreateLocaltions < ActiveRecord::Migration[5.1]
  def change
    create_table :localtions do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :region
      t.string :zip_code
      t.string :country
      t.string :description
      t.integer :member_id

      t.timestamps
    end
  end
end
