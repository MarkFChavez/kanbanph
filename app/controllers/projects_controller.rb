class ProjectsController < ApplicationController

  before_filter :authenticate_user!

  def index
	  @projects = current_user.projects
  end

  def show
	  @project = current_user.projects.find(params[:id])
	  @task = Task.new
	  @todo = @project.tasks.todo
	  @doing = @project.tasks.doing
	  @done = @project.tasks.done
  end

  def new
	  @project = Project.new
  end

  def create
	  @project = current_user.projects.build(project_params)

	  if @project.save	
		redirect_to projects_path, notice: "Created new project \"#{@project.name}\""
	  else
		render :new
	  end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def project_params
	params.require(:project).permit(:name,:desc)
  end
end
