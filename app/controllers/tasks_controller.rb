class TasksController < ApplicationController
  before_action :set_task, only: [:update, :destroy]

  # Create
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end
  # /Create

  # Read
  def index
    @tasks = Task.all
  end

  # def show
  #   @task = Task.find(params[:id])
  # end
  # /Read

  # Update
  def edit
    @task = Task.find(params[:id])
  end

  def toggle
    @task = Task.find(params[:id])

    @task.done = params[:done] ? true : false
    @task.save
  end

  def update
    @task.update(task_params)

    @task.save
    redirect_to tasks_path
  end
  # /Update

  # Delete
  def destroy
    # @task = Task.find(params[:id])

    @task.destroy
    redirect_to tasks_path
  end
  # /Delete

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :done)
  end

end
