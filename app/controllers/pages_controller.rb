class PagesController < ApplicationController
    def index
        @news = DataNews.all
    end
    def show
        @news = DataNews.all
        redirect_to root_path
    end
    def login
        redirect_to new_admin_user_session_path
    end
    private
    def news_params
        params.require(:data_news).permit(:news_name,:news_desk, :image_news)
    end
    def new 
    end

end
