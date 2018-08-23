class UsersController < ApplicationController
    before_action :authenticate_user!
    
    def show
        @user = User.find(params[:id])
    end

    def update
        @user = current_user.role.update(user_params)
        if @user.update
            flash[:notice] = 'You have succesfully subscribed to D-pressed'
        else

        end
    end
    
    def subscribed
        @user.subscriber!
    end
    private

    def user_params
        params.require(:user).permit(:id, :role)
    end
end

