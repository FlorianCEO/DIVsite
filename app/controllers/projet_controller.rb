class ProjetController < ApplicationController
  def index
  	@Projets = Projet.limit(15).in_groups_of(6, false)
  end

  def show
  	@Projets = Projet.all
  	@projet = Projet.find_by(slug: params[:slug])


  	if @projet.nil?
  		redirect_to root_path
  	end
  end
end
