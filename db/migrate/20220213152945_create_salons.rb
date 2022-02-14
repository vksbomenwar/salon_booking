class CreateSalons < ActiveRecord::Migration[5.2]
  def change
    create_table :salons do |t|
      t.string :company_name
      t.string :gstin
      t.string :pan_number
      t.text :address
      t.integer :no_of_chairs
      t.timestamps
    end
  end
end
