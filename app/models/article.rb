class Article < ApplicationRecord
    #Validation to check the number of characters and if blank or not
    validates :title, presence: true, length: { minimum: 6, maximum: 100 }
    validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
  