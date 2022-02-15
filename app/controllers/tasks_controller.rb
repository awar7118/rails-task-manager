class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = find_task
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(set_task)
    # @task = Task.new(params[task])
    @task.save
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end
# Setting strong params below
  def set_task
    params.require(:task).permit(:title, :details)
  end
end
