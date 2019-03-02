class TasksController < ApplicationController
  before_action :authenticate_user! #for devise


  def edit
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
  end


  def create
    @project = Project.find(params[:project_id])

    @task = @project.tasks.build
    @task.user_id = current_user.user_id

    if @task.save
      redirect_to project_task_path(project_id: @project.id, id: @task.id), :notice => "New task was successfully created"
    end

  end

  def update
    @project = Project.find(params[:id])
    @task = Task.find(params[:id])

      @task.update_attributes!(task_params)
        respond_to do |f|
        f.html { redirect_to projects_url }
        f.js
        end
    
  end


  def destroy
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
    @task.destroy
    # redirect_to action "index"
    redirect_to project_tasks_path(@project), :notice => "Task was successfully deleted "
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end


end
