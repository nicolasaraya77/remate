class CreateCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :courts do |t|
      t.string :name
      t.string :rut
      t.string :address
      t.string :phone
      t.integer :account

      t.timestamps
    end
  end
end
