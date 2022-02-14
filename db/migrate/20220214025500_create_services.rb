class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.integer :duration
      t.decimal :cost, precision: 12, scale: 2
      t.references :salon, index: true, foreign_key: true
      t.timestamps
    end
  end
end
