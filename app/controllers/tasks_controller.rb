class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
        redirect_to @task, notice: "障害情報を登録しました。"
    else
        render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update!(task_params)
    redirect_to tasks_url, notice: "障害情報を更新しました。"
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to tasks_url, notice: "障害情報を削除しました。"
  end

  private

  def task_params
    params.require(:task).permit(
        :dantai_kbn, 
        :enduser, 
        :motouke, 
        :naiyou, 
        :syubetu_kbn, 
        :renraku_d, 
        :renraku_t, 
        :sagyou_d, 
        :idou, 
        :taiou_cd, 
        :del_flg)
  end
end
