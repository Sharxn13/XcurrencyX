class ArticlesController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @articles = Article.all
  end


  def show
    @article = Article.find(params[:id])
    @users = User.all
  end

  def new
    @articles= Article.all
    @users = User.all
  end

  def edit
    @article = Article.find(params[:id])
    @article.user = current_user
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    @article.save

    redirect_to articles_path(@article)
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    @article.save
    redirect_to articles_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

    private
    def article_params
      params.require(:article).permit(:title, :description, :image)
    end
end