class EmployeeMailer < ApplicationMailer
  default from: 'airkongrent@gmail.com'
  layout 'mailers/employees '


  def employee_fired(employee)
    @employee = employee
    @url  = 'airkongrent@gmail.com'
    mail(to: @employee.email, subject: 'Something went wrong...')
  end

end
