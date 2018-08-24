class UsersController < ApplicationController
    before_action :authenticate_user!
    
    def show
        @user = User.find(params[:id])
    end

    def update
        @user = current_user
        if @user.basic_user?
            @user.subscriber!
            redirect_to user_path, notice: 'You have succesfully subscribed to D-pressed'
        elsif @user.subscriber?
            flash[:error] = 'You are already subscribed'
            redirect_to user_path
        else
            flash[:error] = 'Could not subscribe to D-pressed'
            redirect_to user_path 
        end
    end

end

