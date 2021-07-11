class AddPasswordDigestToUsers < ActiveRecord::Migration[6.1]
  def change
    #add _digest to the field you want to encrypt
    add_column :users, :password_digest, :string
  end
end
