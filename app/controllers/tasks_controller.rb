class TasksController < ApplicationController
  before_action :authenticate_user! #for devise


  def edit
    @project = current_user.projects.find(params[:project_id])
    @task = @project.tasks.find(params[:id])
      
      respond_to do |f|
      f.html  { redirect_to project_tasks_url(@project) }
      f.js
      end
  end


  def create
    @project = current_user.projects.find(params[:project_id])
    
    @task = @project.tasks.create!(task_params)
    
    respond_to do |f|
    f.html { redirect_to project_tasks_url(@project) }
    f.js
    end    
    
  end

  def update
    @project = current_user.projects.find(params[:project_id])
    @task = @project.tasks.find(params[:id])

      @task.update_attributes!(task_params)
        respond_to do |f|
        f.html { redirect_to project_tasks_url(@project) }
        f.js
        end
    
  end


  def destroy
   
    @project =  current_user.projects.find(params[:project_id])
    
    @task = @project.tasks.find(params[:id])

    @task.destroy

    respond_to do |f|
    f.html { redirect_to project_tasks_url(@project) }
    f.js
    end
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end


end
