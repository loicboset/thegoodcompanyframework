class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    @idea.user_id = 1
    @idea.save
    redirect_to ideas_path
  end

  private

    def idea_params
      params.require(:idea).permit(:name, :description)
    end

end
