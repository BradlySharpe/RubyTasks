class TasksController < ApplicationController
  def index
    @tasks = Task.all # @ symbol makes it an instance variable available in the views
  end

  def create
    #render :text => params.inspect # Shows $_GET & $_POST vars
    Task.create params[:task]
    redirect_to :back
  end
end
