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
    puts params.inspect
    @project = Project.find(params[:project_id])
    @entry = @project.time_entries.new(
      hours: params[:time_entry][:hours],
      minutes: params[:time_entry][:minutes],
      date: params[:time_entry][:date],
    )

    render "new" unless @entry.save
    redirect_to '/projects/#{params[:project_id]}/time_entries'
  end
end
