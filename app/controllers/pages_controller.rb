
class PagesController < ApplicationController
    def index
        @news = DataNews.all
        @category = Category.all
    end
    def show
        @news = DataNews.find(params[:id])
    end
    def login
        redirect_to new_admin_user_session_path
    end
    private
    def news_params
        params.require(:data_news).permit(:news_name,:news_desk, :image_news, :category_id)
    end
    def new 
    end

end
