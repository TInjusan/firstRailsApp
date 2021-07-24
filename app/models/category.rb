class Category < ApplicationRecord
    has_many :article_categories
    #This is where the associate takes place.
    has_many :articles, through: :article_categories
end
  