require_relative "employee.rb"

class Manager < Employee

    attr_accessor :employees
    attr_writer :boss

    # def self.add_employee(employee)
    #     if employee.boss == self
    #         self.employees << employee
    #     end
    # end
    

    def initialize(name, title, salary, boss = nil)
        super

        @employees = []
        @boss = boss

    end

    def bonus(multiplier)
        sum = 0
        self.employees.each do |employee|
            sum += employee.salary 
        end
        sum * multiplier
            
    end
  
  

  def add_employee(employee)
    self.employees << employee
    # employee.boss = self
    if self.boss 
        self.boss.employees += [self.employees[-1]]
    end
  end

#   def add_employee(*employees)
#     employees.each{&:push}
#     employee.boss = self
#   end

end

ned = Manager.new("Ned","Founder",1000000)
darren = Manager.new("Darren", "TA Manager",78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David","TA", 10000, darren)
ned.add_employee(darren)
darren.add_employee(shawna)
darren.add_employee(david)
p ned.employees
p darren.employees

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000

