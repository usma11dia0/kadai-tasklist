class TasksController < ApplicationController

  def index
    @tasks = Task.all.page(params[:page]).per(3)
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    
    if @task.save
      flash[:success] = 'タスクが正常に追加されました'
      redirect_to @task
    else
      flash[:danger] = 'タスクを正常に追加出来ませんでした'
      render :new
    end
  end
  
  def update
    @task = Task.find(params[:id])
    
    if @task.update(task_params) 
      flash[:success] = 'タスクは正常に更新されました'
      redirect_to @task
    else
      flash.now[:danger] = 'タスクは正常に更新されませんでした'
      render :new
    end
  end 

  def new 
    @task = Task.new
  end 

  def edit 
    @task = Task.find(params[:id])
  end 

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    
    flash[:success] = 'タスクは正常に削除されました'
    redirect_to tasks_url
  end
  
   private
   #Strong Parameter
   def task_params
     params.require(:task).permit(:content, :status)
   end
end
