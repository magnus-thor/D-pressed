class CommentsController < ApplicationController
    before_action :authenticate_user!, except: [:index]

    def create
        article = Article.find(params[:article_id])
        comments = Comment.create(content: params[:comment], article: article, user: current_user)
        if comments.persisted?
        redirect_to article_path(article), notice: "Your comment was added successfully"
        else
        
        end
    end
end
