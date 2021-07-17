class User < ApplicationRecord
    has_many :articles
    has_many :articles, dependent: :destroy
    
    #Converting all charaters in the email to lowercase
    before_save { self.email = email.downcase }

    validates :username, presence: true,   #Making sure the username is not blank

    uniqueness: { case_sensitive: false }, #Making sure that this is not a duplicate username
    length: { minimum: 3, maximum: 25 }    #Making sure that email address is valid withi min and maximum no. of characters
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
    validates :email, presence: true, 
        uniqueness: { case_sensitive: false }, 
        length: { maximum: 105 },
        format: { with: VALID_EMAIL_REGEX }
    
    has_secure_password
    
end
  