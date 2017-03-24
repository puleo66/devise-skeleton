class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.text :bio
      t.integer :member_id

      t.timestamps
    end
  end
end
