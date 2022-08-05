class SessionsController < ApplicationController
def new; end

def login
    @user = User.find_by(email_id: params[:email_id])
      # finds existing user, checks to see if user can be authenticated
      if @user.present? && @user.authenticate(params[:password])
      # sets up user.id sessions
        session[:user_id] = @user.id
        redirect_to index_path, notice: 'Logged in successfully'
      else
        flash[:alert] = 'Invalid email or password'
        redirect_to login_path
      end
end

end