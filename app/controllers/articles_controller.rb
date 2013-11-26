class ArticlesController < ApplicationController
  skip_before_filter :authorize, only: [:show] 

  def index
  	@articles = Article.all
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.create(article_params)

  	if @article.save
  		redirect_to @article
  	else
  		render 'new'
  	end
  end

  def show
  	@article = Article.friendly.find(params[:id])
    @prodid = "#{@article.id}"
    @pagetype = "article"
    @title = "#{@article.title} #{@article.subtitle}"
    @description = "#{@article.title} #{@article.subtitle}"
  end

  def edit
  	@article = Article.friendly.find(params[:id])
  end

  def update
  	@article = Article.friendly.find(params[:id])

  	if @article.update_attributes(article_params)
  		redirect_to @article
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@article = Article.friendly.find(params[:id])
  	@article.destroy
  	redirect_to root_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :subtitle, :content, :photo)
  end
end
