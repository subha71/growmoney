class SessionsController < ApplicationController
def new; end

def login
    user = User.find_by(email_id: params[:email_id])
    @current_user = user
      # finds existing user, checks to see if user can be authenticated
      if @current_user.present? && @current_user.authenticate(params[:password])
      # sets up user.id sessions
        session[:user_id] = @current_user.id
        redirect_to index_path, notice: 'Logged in successfully'
      else
        flash[:alert] = 'Invalid email or password'
        redirect_to login_path
      end
end

end