class ProjectsController < ApplicationController
	before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
  	@project = Project.new
  end

  def create
  	@project = Project.new project_params

  	if @project.save
  		redirect_to @project, notice: "Successfully saved project post!"
  	else
  		render 'new', notice: "Unable to save project post!"
  	end
  end

  def show
  end

  def edit
  end

  def update
  	if @project.update project_params
  		redirect_to @project, notice: "Successfully updated project post!"
  	else
  		render 'edit', notice: "Unable to update project post!"
  	end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
  	params.require(:project).permit(:title, :link, :content)
  end

  def find_project
  	@project = Project.find(params[:id])
  end
end