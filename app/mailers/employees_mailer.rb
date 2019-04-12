class EmployeeMailer < ApplicationMailer
  default (:from => "nabivanec.a@gmail,com", :to=>"nabivanec.a@gmail,com"), template_path: 'mailers/items'
      def employee_fired(notification)
        @notification = notification
        @url  = "nabivanec.a@gmail,com"
        mail(:subject => "New Notification")
      end
end
