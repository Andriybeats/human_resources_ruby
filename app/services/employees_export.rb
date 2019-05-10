class EmployeesExport

  def initialize(employees)
    @employees = employees
  end

  attr_reader :employees

  def call
    attributes = %w{id email name}

# csv = CSV.open('emploees.csv', 'wb')
    CSV.open(File.join(Rails.root.join('public', '1.csv')), 'wb') do |csv|
      csv << attributes
# binding.pry
      employees.each do |employee|
        csv << attributes.map{ |attr| employee.send(attr) }
      end
    end
  end
end