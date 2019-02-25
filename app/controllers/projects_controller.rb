class ProjectsController < ApplicationController
  before_action :authenticate_user! #for devise
  before_action :find_project, only: [:show, :edit, :update, :destroy]
  
  def index
    @projects = Project.where(user_id: current_user.id) 
  end

  def new
    @project = Project.new
  end

  def show
  end

  def create
    @project = Project.create!(allowed_params)

    redirect_to projects_path
  end

  def edit
    
  end

  def update
    
    if @project.update(allowed_params)
      if @project.errors.empty?
        redirect_to project_path(@project), :notice => "Project was successfully updated"
      end
      else
        @errors = @project.errors
        render 'edit'
    end
  end

  def destroy
    @project = Project.destroy(params[:id])
    # будет проверка на наличие tasks 

    # redirect_to action "index"
    redirect_to projects_path, :notice => "Project was successfully deleted "
  end


  private

    def find_project
      @project = Project.find(params[:id])
    end

    def allowed_params
      params.require(:project).permit(:name)
    end

end
