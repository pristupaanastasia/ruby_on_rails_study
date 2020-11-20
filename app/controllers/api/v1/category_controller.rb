module Api
    module V1
    end
end
class Api::V1::CategoryController < ApplicationController
    def index
    end
    def show
        @news = DataNews.all.where(category_id: params[:id])
        render json: @news.to_json
    end
    def create
        @category = Category.create!(category_params)
        redirect_to  admin_my_models_path
    end
    private
    def category_params
        params.require(:categories).permit(:name_category)
    end
end