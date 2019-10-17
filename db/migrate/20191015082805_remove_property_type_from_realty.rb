class RemovePropertyTypeFromRealty < ActiveRecord::Migration[5.2]
  def change
    remove_column :realties, :property_type
    add_column :realties, :type_property_id, :integer
  end
end
