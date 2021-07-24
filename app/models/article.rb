class Article < ApplicationRecord
    belongs_to :user

    has_many :article_categories
    #This is where the associate takes place.
    has_many :categories, through: :article_categories

    #Validation to check the number of characters and if blank or not
    validates :title, presence: true, length: { minimum: 6, maximum: 100 }
    validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
  