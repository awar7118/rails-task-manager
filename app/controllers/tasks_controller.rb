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
    @task.save
    redirect_to '/tasks'
  end

  def edit
    @task = find_task
  end

  def update
    @task = find_task
    @task.update(set_task)
    redirect_to '/tasks'
  end

  def destroy
    @task = find_task
    @task.destroy
    redirect_to '/tasks'
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
