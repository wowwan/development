class CreateCitizenships < ActiveRecord::Migration
  def change
    create_table :citizenships do |t|
      t.string :country_name
      t.string :origin_citizen
      t.string :origin_citizen_for

      t.timestamps null: false
    end
  end
end
