class SearchController < ApplicationController
  def index
    if params[:search].blank?
      redirect_to ideas_path and return
    else
       @category = Categoryy.find(params[:category])
       @parameter = params[:search].downcase
      @product = @category.ideas.where("name LIKE ?", "%#{@parameter}%")



    end
  end
end
