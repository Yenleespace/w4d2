require_relative 'employee.rb'
class Manager <Employee

  def initialize(name, title, salary, boss = nil)
    super
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def bonus(multiplier)
    total = 0

    @employees.each do |employee|
      total += employee.salary * multiplier if employee.title != "TA"
        
      total += employee.bonus(multiplier)
    end
    total
  end
end

ned = Manager.new("Ned", "Founder", 10000000)
darren = Manager.new("Darren", "TA Manager", 78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)
ned.add_employee(darren)
darren.add_employee(shawna)
darren.add_employee(david)

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000