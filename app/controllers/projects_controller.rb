class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    @project.save
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end

end
