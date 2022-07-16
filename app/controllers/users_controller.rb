class UsersController < ApplicationController

    def home
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to '/'
        else
            redirect_to new_user_path
        end
    end

    def show
        @users = User.all
    end
    


private
def user_params
    params.require(:user).permit(:name, :email_id, :date_of_birth)
end

end
