class Employee

attr_accessor :name, :salary, :manager

@@all=[]

def initialize (name, salary, manager)
@name=name
@salary=salary
@manager=manager
@@all << self
end

def self.all
  @@all
end

def manager_name
  self.manager.name
end

def self.paid_over(value)
  @@all.select do |employee|
    employee.salary > value
  end
end

def self.raise_wage
@@all.map do |employee|
  if employee.salary<10000
    employee.salary = 10000
  end
    employee
  end
end

def self.find_by_department(department_name)
@@all.find do |employee|
  employee.manager.department == department_name
end
end

def tax_bracket
  mysalary = self.salary
 @@all.select do |employee|
   employee.salary > mysalary - 1000 && employee.salary < mysalary + 1000
  end

end

end
