class ArticlePolicy < ApplicationPolicy

  def create?
    current_user.author? || current_user.editor?
  end

  def index?
    true
  end

  def show?
    current_user.author? || current_user.editor? || current_user.subscriber?
  end
end
