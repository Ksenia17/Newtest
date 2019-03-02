class ProjectsController < ApplicationController
  before_action :authenticate_user! #for devise
  before_action :find_project, only: [:edit, :update, :destroy]
  
  def index
    @projects = current_user.projects
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create!(allowed_params)
    @project.user_id = current_user.id
    @project.save
    
    respond_to do |f|
    f.html { redirect_to projects_url }
    f.js
    end
  end

  def edit
  end

  def update
      @project = Project.find(params[:id])
    
      @project.update_attributes!(allowed_params)
        respond_to do |f|
        f.html { redirect_to projects_url }
        f.js
        end
        
  end

  def destroy
    @project = Project.destroy(params[:id])
    # будет проверка на наличие tasks 
    respond_to do |f|
    f.html { redirect_to projects_url }
    f.js
    end
  end


  private

    def find_project
      @project = Project.find(params[:id])
    end

    def allowed_params
      params.require(:project).permit(:name)
    end

end
