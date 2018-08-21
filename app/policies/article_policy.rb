class ArticlePolicy < ApplicationPolicy

  def create?
    user == user.author? || user.editor?
  end

  def index?
    true
  end

  def show?
    user ==  user.author? || user.editor? || user.subscriber?
  end
end
