class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index]


  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    unless current_user
      redirect_to new_user_registration_path
    end
  end
  
  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.create(article_params)
    if @article.persisted?
      flash[:notice] = 'Article successfully created.'
    else
      flash[:error] = 'Fields cant be blank. Your article could not be saved'
    end
  end
  
   private
   def article_params
    params.require(:article).permit(:title, :body)
  end
end
