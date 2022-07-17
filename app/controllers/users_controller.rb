class UsersController < ApplicationController

    def home
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params) 
        unless user_params[:name].empty? || user_params[:date_of_birth].empty? || user_params[:email_id].empty?
            if @user.save
                flash[:notice] = "Article was created successfully."
                redirect_to @user
            else
                flash[:error] = "Email ID already Exists"
            redirect_to new_user_path
            end
        else
            flash[:error] = "All the fields are mandatory"
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
