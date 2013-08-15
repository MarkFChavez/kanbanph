class TasksController < ApplicationController
 
  before_filter :authenticate_user!
  before_filter :get_project

  def create
	  @task = @project.tasks.build(task_params)

	  if @task.save
		  redirect_to @project, notice: "New task created under #{@task.task_type.upcase}"
	  else
		  redirect_to @project, alert: "Oops! An error has occurred while creating new task"
	  end
  end

  def update
  end

  def destroy
  end

private
  def get_project
	@project = current_user.projects.find(params[:project_id])
  end

  def task_params
	  params.require(:task).permit(:name, :task_type)
  end

end
