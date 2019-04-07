class HistoryController < ApplicationController
  def index
    @stories = History.all
  end

  def show
    @history = History.find(params[:id])
  end

  def new
    @history = History.new
  end

  def edit
    @history = History.find(params[:id])
  end

  def create
    @history = History.new(history_params)
    if @history.save
      redirect_to @history
    else
      render 'new'
    end
  end

  def update
    @history = History.find(params[:id])

    if @history.update(department_params)
      redirect_to @history
    else
      render 'edit'
    end
  end

  def destroy
    @history = History.find(params[:id])
    @history.destroy

    redirect_to historys_path
  end

  private
  def history_params
    params.require(:history).permit(:position_id, :date_start, :date_end, :employee_id )
  end
end
