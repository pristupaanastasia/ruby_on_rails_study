class PagesController < ApplicationController
    def index
        @news = DataNews.all
    end
    def show
        @news = DataNews.all
        redirect_to root_path
    end
    def create
        @news = DataNews.create!(news_params)
        redirect_to root_path
    end
    def delete
        @news = DataNews.find(params[:id])
        @news.destroy
        redirect_to root_path
    end
    private
    def news_params
        params.require(:data_news).permit(:news_desk, :image_news)
    end
    def new 
    end

end
