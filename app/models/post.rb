class Post < ApplicationRecord
     Ingredients = %i[js ]
    has_and_belongs_to_many :ingredients

end