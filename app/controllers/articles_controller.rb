class ArticlesController < ApplicationController

    def show
        #Make it as instance variable by adding @ to the variable so that it will be accessible
        # the params[:id] gets the id in the url (the last part of the GET HTTP request) http://localhost:3000/articles/1
        @article = Article.find(params[:id])
    end
    

end
