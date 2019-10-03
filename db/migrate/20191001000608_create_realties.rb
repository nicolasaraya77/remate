class CreateRealties < ActiveRecord::Migration[5.2]
  def change
    create_table :realties do |t|
      t.integer :commune_id
      t.string :street
      t.integer :number_unit
      t.string :unit_estate
      t.integer :street_type_id
      t.string :population_villa
      t.integer :condominium_id
      t.integer :property_type
      t.integer :apple
      t.integer :property
      t.text :name_realty
      t.integer :latitude
      t.integer :longitude
      t.float :mt2_land
      t.float :mt2_built

      t.timestamps
    end
  end
end
