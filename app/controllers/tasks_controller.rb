class TasksController < ApplicationController
  before_action :authenticate_user! #for devise


  def index
    @project = Project.find(params[:project_id])
    @tasks = @project.tasks
  end

  def edit
    @project = Project.find(params[:project_id])
    @task = @project.tasks.find(params[:id])
  end


  def create
    
    @project = current_user.find(params[:project_id])
    
    @task = @project.tasks.create!(task_params)
    
    respond_to do |f|
    f.html { redirect_to project_task_url(@project) }
    f.js
    end    
    
  end

  def update
    @project = Project.find(params[:project_id])
    @task = @project.tasks.find(params[:id])

      @task.update_attributes!(task_params)
        respond_to do |f|
        f.html { redirect_to project_tas_url(@project) }
        f.js
        end
    
  end


  def destroy

    @project = Project.find(params[:project_id])
    @task = @project.tasks.find(params[:id])

    @task.destroy

    respond_to do |f|
    f.html { redirect_to project_tas_url(@project) }
    f.js
    end
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end


end
