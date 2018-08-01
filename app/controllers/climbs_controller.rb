class ClimbsController < ApplicationController
	before_action :find_climb, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
  	@climb = Climb.new
  end

  def create
  	@climb = Climb.new climb_params

  	if @climb.save
  		redirect_to @climb, notice: "Successfully saved climb post!"
  	else
  		render 'new', notice: "Unable to save climb post!"
  	end
  end

  def show
  end

  def edit
  end

  def update
  	if @climb.update climb_params
  		redirect_to @climb, notice: "Successfully updated climb post!"
  	else
  		render 'edit', notice: "Unable to update climb post!"
  	end
  end

  def destroy
    @climb.destroy
    redirect_to climbs_path
  end

  private

  def climb_params
  	params.require(:climb).permit(:title, :grade, :content, :slug)
  end

  def find_climb
  	@climb = Climb.friendly.find(params[:id])
  end
end
