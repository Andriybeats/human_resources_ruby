class ItemsMailer < ApplicationMailer
  default from: "nabivanec.a@gmail.com",
          template_path: 'mailers/items'
  def employee_fired(employee)
    @employee = employee
    mail to: 'nabivanec.a@gmail.com',
         subject: "You were fired"
  end
end
