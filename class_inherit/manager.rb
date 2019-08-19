require_relative "employee" 

class Manager < Employee 
  attr_accessor :sub_employees
  def initalize(sub_employees)
    super
    @sub_employees = [] 
  end 

  def bonus(multiplier) 
  
  end
  
  def all_sub_employee
    result = 0
    self.sub_employees.each do |employee|
      if employee.is_a?(Manager)
        result += employee.salary + employee.all_sub_employee
      else
        result += employee.salary
      end
    end
    result
  end 
end 


ned = Manager.new("ned", "manager", 50000, nil) 
darren = Manager.new("darren", "manager", 50000, ned) 
e1 = Employee.new("shaun", "employee", 50000, darren) 
e2 = Employee.new("david", "employee", 50000, darren) 

p ned.all_sub_employee

p darren 