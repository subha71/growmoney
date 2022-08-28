class ApplicationController < ActionController::Base
    def user_is_logged_in?
        if session[:user_id].nil
            return false
        end
      end
   
end
