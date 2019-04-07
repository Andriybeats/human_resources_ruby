class VacationsController < ApplicationController
  def index
      @vacations = Vacation.all
  end

  def show
    @vacation = Vacation.find(params[:id])
  end

  def new
    @vacation = Vacation.new
  end

  def edit
    @vacation = Vacation.find(params[:id])
  end

  def create
    @vacation = Vacation.new(vacation_params)
    if @vacation.save
      redirect_to @vacation
    else
      render 'new'
    end
  end

  def update
    @vacation = Vacation.find(params[:id])

    if @vacation.update(department_params)
      redirect_to @vacation
    else
      render 'edit'
    end
  end

  def destroy
    @vacation = Vacation.find(params[:id])
    @vacation.destroy

    redirect_to vacations_path
  end

  private
  def vacation_params
    params.require(:vacation).permit(:employee_id, :date_start, :date_end)
  end
end
