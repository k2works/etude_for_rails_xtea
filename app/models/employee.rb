class Employee < ApplicationRecord
  self.table_name='AT020'
  self.primary_key=:NRJYUGYOIN
  has_many :employee_departments, :class_name => 'EmployeeDepartment', :foreign_key => [:NRJYUGYOIN]
end
