ActiveAdmin.register_page "My Models" do
    content do
        render :partial => 'index'
    end
    controller do
        def index
            @news = DataNews.all
        end
        def show
            @news = DataNews.all
            redirect_to  admin_my_models_path
        end
        def create
            @news = DataNews.create!(news_params)
            redirect_to  admin_my_models_path
        end
        def delete
            @news = DataNews.find(params[:id])
            @news.destroy
            redirect_to  admin_my_models_path
        end
        private
        def news_params
            params.require(:data_news).permit(:news_name,:news_desk, :image_news)
        end
        def new 
        end
    
    end
end