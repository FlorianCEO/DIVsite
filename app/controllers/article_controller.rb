class ArticleController < ApplicationController
  def index
  	@articles = Article.order(position: :desc)
  end

  def show
  	@article = Article.find_by(slug: params[:slug])

    if @article.nil?
  		redirect_to root_path
  	end
  	@user = User.all
  end
end
