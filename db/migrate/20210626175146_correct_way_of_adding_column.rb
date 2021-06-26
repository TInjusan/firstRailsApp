class CorrectWayOfAddingColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :title, :string
    add_column :articles, :description, :text
  end
end

=begin

The creation of the articles should have been like this:

class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title 
      t.text :description 
    end
  end
end


The colon : should be right beside the column name not right after the type
   
=end