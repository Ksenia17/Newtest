class TasksController < ApplicationController
  before_action :authenticate_user! #for devise

  def index
    @projects = Project.find(params[:project_id])
    @tasks = @projects.tasks
  end

  def create
    @project = Project.find(params[:project_id])

    @task = @project.tasks.build
    @task.user_id = current_user.user_id

    if @task.save
      redirect_to project_task_path(project_id: @project.id, id: @task.id), :notice => "New task was successfully created"
    end

  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to project_tasks_path(@project), :notice => "Task was successfully deleted "
  end



end
