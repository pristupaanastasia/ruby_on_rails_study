
class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        profiles_path
     end
end
