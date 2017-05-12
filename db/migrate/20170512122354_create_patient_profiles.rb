class CreatePatientProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :patient_profiles do |t|
      t.text :FirstName
      t.text :LastName
      t.date :Birthday
      t.text :Gender
      t.boolean :Self
      t.string :Address
      t.string :Phone

      t.timestamps
    end
  end
end
