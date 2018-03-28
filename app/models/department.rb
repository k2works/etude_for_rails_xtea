class Department < ApplicationRecord
  self.table_name='AT010'
  self.primary_key=:CDBUMON
  has_many :department_hierarchies, :class_name => 'DepartmentHierarchy', :foreign_key => [:CDBUMON]
  has_many :employee_departments, :class_name => 'EmployeeDepartment', :foreign_key => [:CDBUMON]
end
