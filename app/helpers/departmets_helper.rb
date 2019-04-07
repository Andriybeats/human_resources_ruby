module DepartmetsHelper
  def department_for_select
    Department.all.collect { |e| [e.name, e.id] }
  end
end
