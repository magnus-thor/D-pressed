class CommentsController < ApplicationController

    def create
        article = Article.find(params[:article_id])
        Comment.create(comment: params[:comment], article_id: article.idrail)
        redirect_to article_path(article)
    end
end
