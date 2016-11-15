class ProjectsController < ApplicationController
  def index
    @projects = Project.order('created_at ASC').limit(10)
  end
end
