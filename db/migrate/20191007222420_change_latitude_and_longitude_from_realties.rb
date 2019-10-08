class ChangeLatitudeAndLongitudeFromRealties < ActiveRecord::Migration[5.2]
  def change
    remove_column :realties, :latitude
    remove_column :realties, :longitude

    add_column :realties, :latitude, :float
    add_column :realties, :longitude, :float

  end
end
