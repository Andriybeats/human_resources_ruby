class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to @employee
    else
      render 'new'
    end

  end

  def update
    @employee = Position.find(params[:id])

    if @employee.update(employee_params)
      redirect_to @employees
    else
      render 'edit'
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    EmployeeMailer.employee_fired(@employee).deliver_now
    @employee.destroy
    redirect_to employees_path
  end

  def profile
      #@employee
  end

  private
  def employee_params
      params.require(:employee).permit(:name,
                                       :surname,
                                       :date_birthday,
                                       :city_birthday,
                                       :address,
                                       :department_id,
                                       :start_work,
                                       :position_id)
  end
end
