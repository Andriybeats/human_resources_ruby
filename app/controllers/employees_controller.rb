# require 'csv'


class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    EmployeesExport.new(@employees).call()
  end

=begin
  def import
    Employee.import(params[:fempoleesile])
    redirect_to root_url, notice: "Employees Uploaded successfully"
  end
=end

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
    @employee.destroy
=begin
    EmployeeMailer.employee_fired(@employee).deliver_now
    redirect_to employees_path
=end
  end

  def export
    EmployeesExport.call(@employees)
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
