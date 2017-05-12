class CreateInsurances < ActiveRecord::Migration[5.0]
  def change
    create_table :insurances do |t|
      t.string :insurance_id
      t.text :member_first_name
      t.text :member_last_name
      t.string :member_birth_date

      t.timestamps
    end
  end
end
