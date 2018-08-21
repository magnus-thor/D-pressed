class ArticlePolicy < ApplicationPolicy
    
    def index?
        true
    end

    def new?
        @user.author? || @user.editor?
    end

    def create?
        new?
    end

end