class ProjectsController < ApplicationController
  def index
    @projects = Project.order('created_at ASC').limit(10)
  end

  def show
    @project = Project.find_by(id: params[:id])
    unless @project
      render "no_projects_found"
    end
  end
end
