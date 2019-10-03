class Realty < ApplicationRecord



    enum street_type: [:street, :avenue, :passage,]
    enum property_type: [:house, :department, :local, :office, :cellar, :site, :box, :parcela]
end
