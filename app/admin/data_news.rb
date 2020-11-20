ActiveAdmin.register DataNews do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :news_name, :news_desk, :image_news, :category_id, :created_at
  #
  # or
  #
  # permit_params do
  #   permitted = [:news_desk]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :news_name
      f.input :news_desk
      f.input :category_id
      f.input :image_news, :as => :file, :hint => image_tag(f.object.image_news,  width: '200')
    end      # builds an input field for every attribute
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
  
  
end
