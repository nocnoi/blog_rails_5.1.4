class ArticlesController < ApplicationController

  def index
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
    @article.save

    redirect_to @article
  end

  def update
  end

  def destroy
  end


  # ------------- private methods -------------------------------------------
  private

  def article_params
    params.require(:article).premit(:title, :text)
  end
end
