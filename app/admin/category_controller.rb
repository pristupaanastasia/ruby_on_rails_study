class CategoryController < ApplicationController
    def index
    end
    def show

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
