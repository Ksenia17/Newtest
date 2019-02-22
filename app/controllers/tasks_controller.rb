class TasksController < ApplicationController
  before_action :authenticate_user! #for devise

  def index
    @tasks = current_user.tasks
  end

  def create
    @project = Project.find(params[:project_id])

    @tasks = current_user.tasks

    @task = @project.tasks.build
    @task .user_id = current_user.user_id

    if @task.save
    #  redirect_to 
    end

  end
end
