class TasksController < ApplicationController
  def index
    @tasks = Task.all # @ symbol makes it an instance variable available in the views
  end
end
