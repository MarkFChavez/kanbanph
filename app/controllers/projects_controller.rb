class ProjectsController < ApplicationController

  before_filter :authenticate_user!

  def index
	  @projects = current_user.projects
  end

  def show
	  @project = current_user.projects.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
