class PagesController < ApplicationController
    def home
        #routes directly to articles page once logged in
        redirect_to articles_path if logged_in?
    end

    def about
    end
    

end
