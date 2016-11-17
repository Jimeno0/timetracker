class TimeEntriesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @entries = @project.time_entries.where('date > ?', 1.month.ago.end_of_month)
  end

  def new
    @project = Project.find(params[:project_id])
    @entry = @project.time_entries.new
  end

  def create
    @project = Project.find(params[:project_id])
    @entry = @project.time_entries.new(entry_params)

    render "new" unless @entry.save
    redirect_to '/projects/#{params[:project_id]}/time_entries'
  end

  def edit
    @project = Project.find(params[:project_id])
    @entry = @project.time_entries.find(params[:id])
  end

  def update
    @project = Project.find(params[:project_id])
    @entry = @project.time_entries.find(params[:id])

    @entry.update(entry_params)
    redirect_to '/projects/#{params[:project_id]}/time_entries'
  end

  def destroy
    @project = Project.find(params[:project_id])
    @entry = @project.time_entries.find(params[:id]).destroy
    redirect_to '/projects/#{params[:project_id]}/time_entries'
  end

  private
  def entry_params
   params.require(:time_entry).permit(:hours, :minutes, :date)
  end
end
