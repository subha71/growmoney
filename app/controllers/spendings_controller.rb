class SpendingsController < ApplicationController
    def new
        @user = User.find(params[:user_id])
        
    end

    def create
        @user = User.find(params[:user_id])
        @user.spendings.create(spending_params)
        #render 'index' 
        redirect_to user_spendings_path(@user)
    end

    def show
        @user = User.find(params[:user_id])
    end

private
def spending_params
    params.require(:spending).permit(:amount, :spent_on )
end



end
