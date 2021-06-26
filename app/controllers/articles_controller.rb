class ArticlesController < ApplicationController

    def show
        #Make it as instance variable by adding @ to the variable so that it will be accessible
        # the params[:id] gets the id in the url (the last part of the GET HTTP request) http://localhost:3000/articles/1
      
        @article = Article.find(params[:id])
    end
    
    def index 
        @articles = Article.all
    end

    def new
    end
     
    def create 
        #Due to security feature of Rails, you need to specify what you want to get from the submitted form
        #Here's the syntax on how to do that, because if you don't do this, it will display an error

        @article = Article.new(params.require(:article).permit(:title, :description))

        #to render on the new article page, need to convert to json format
        #render plain: params[:article].to_json

        #command to save the gathered submitted form for new article
        @article.save

        #Redirecting to the article details page to show new article
        redirect_to article_path(@article)

    end  


end
