class ProfilesController < ApplicationController
    def index
        @news = DataNews.order(created_at: :desc)
        @user = current_user
    end
    def show
        @news = DataNews.order(created_at: :desc)
    end
    def create 

    end
    def create
        @user = current_user
        @user.update(user_params)
    end
    def update
        @user = current_user
        @user.save
        redirect_to profiles_path
    end
    private
    def news_params
        params.require(:data_news).permit(:news_name,:news_desk, :image_news, :category_id, :created_at)
    end
    def user_params
        params.require(:user).permit(:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, category_ids: [])
    end
end
