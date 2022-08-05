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
                session[:user_id] = @user.id
                flash[:notice] = "User created successfully."
                redirect_to @user
            else
                flash[:alert] = "Email ID already Exists"
            redirect_to new_user_path
            end
        else
            flash[:alert] = "All the fields are mandatory"
            redirect_to new_user_path
        end
    end

    def show
        @users = User.all
    end

    def index
        @current_user = User.find(session[:user_id])
    end
    


private
def user_params
    params.require(:user).permit(:name, :email_id, :date_of_birth, :password)
end

end
