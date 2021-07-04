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
        @article = Article.new
    end
    
    def edit
        @article = Article.find(params[:id])
    end
 
    
    def create 
 
        @article = Article.new(params.require(:article).permit(:title, :description))
       
        if  @article.save
            flash[:notice] = "Article was created successfully."
            redirect_to  @article 
        else
            render 'new'
        end
       
    end  

    def update
        @article = Article.find(params[:id])
       if  @article.update(params.require(:article).permit(:title, :description))
           flash[:notice] = "Article was updated successfully."
           redirect_to  @article 
       else
           render 'edit'
       end
    end


end
