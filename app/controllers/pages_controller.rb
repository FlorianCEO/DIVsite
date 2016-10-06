class PagesController < ApplicationController
  def index
  	@articles = Article.all
    @Projets = Projet.all
  end

  def agence
  end

  def methode
  end

  def contact
  end

  def mentionslegales
  end

  def show  

  	@article = Article.find_by(slug: params[:slug])

  if @article.nil?
  		redirect_to root_path
  end
  end

end
