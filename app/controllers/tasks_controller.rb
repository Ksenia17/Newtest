class TasksController < ApplicationController
  before_action :authenticate_user! #for devise
  respond_to :html, :js


  def edit
    @project = current_user.projects.find(params[:project_id])
    @task = @project.tasks.find(params[:id])
      
    respond_to do |f|
      f.html  { redirect_to project_tasks_url(@project) }
      f.js
    end
  end

  def deadline
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

  def complete
    @project = current_user.projects.find(params[:project_id])
    @task = @project.tasks.find(params[:id])
    if params['status_flg']
      @task.status_flg = params['status_flg']
    else
      @task.status_flg = false
    end
    @task.save
    
    respond_to do |f|
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
    params.require(:task).permit(:name,:status_flg, :deadline)
  end


end
