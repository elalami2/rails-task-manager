class TaskController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params_task)
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def update
    @tasks = Task.find(params[:id])
    @tasks.update(params_task)
    redirect_to tasks_path
    # if @task.save
    #   redirect_to tasks_path
    # else
    #   render :new
    # end
  end

  def destroy
    @tasks = Task.find(params[:id])
    @tasks.delete
    redirect_to tasks_path
  end

  private

  def params_task
    params.require(:task).permit(:title, :details)
  end
end
