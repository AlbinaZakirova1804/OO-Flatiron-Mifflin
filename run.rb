require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

may=Manager.new("May","Access Lab", 27)
brandon=Manager.new("Brandon","Flatiron Battery Park", 34)
eric=Employee.new("Eric",10000, may)
kevin=Employee.new("KavyWevy", 50, may)
michele=Employee.new("Michele", 50, may)

#Test your code here


binding.pry
puts "done"
