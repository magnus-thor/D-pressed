class RatingsController < ApplicationController
    before_action :authenticate_user!, except: [:index]

    def create
        @article = Article.find(params[:id])
        @rating = article.ratings.create(value: params[:rating].to_i, user: current_user)
        if @rating.persisted?
            flash[:notice] = 'Thank you, for your vote'
            render :new
        else
            flash[:error] = 'An error occured. Your vote was not submitted' 
        end
    end
