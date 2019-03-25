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
    
    @project = current_user.projects.create!(allowed_params)
     
    respond_to do |f|
    f.html { redirect_to projects_url }
    f.js
    end
  end

  def edit
    
    @project =  Project.find(params[:id])
    respond_to do |f|
      f.html  { redirect_to projects_url }
      f.js
      end
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
