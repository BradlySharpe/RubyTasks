class TasksController < ApplicationController
  def index
    @tasks = Task.all # @ symbol makes it an instance variable available in the views
  end

  def create
    #render :text => params.inspect # Shows $_GET & $_POST vars
    Task.create task_params
    redirect_to :back
  end

  # Rails 4 has strongly typed params - http://stackoverflow.com/questions/18413066/rspec-controller-post-action-test-fails-with-activemodelforbiddenattributeserr
  def task_params
    params.require(:task).permit(:allowed, :elements, :of, :task)
  end
end
