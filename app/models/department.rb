# == Schema Information
#
# Table name: AT010 # 部門Ｃ
#
#  CDBUMON    :string(5)        not null, primary key
#  TXBUMON    :string(30)       not null              # 部門名
#  NRKANRISYA :string(5)        not null              # 管理者№
#  TXTEKIYO   :string(300)                            # 摘要
#  UPDCOUNTER :integer          default(0)
#

class Department < ApplicationRecord
  self.table_name='AT010'
  self.primary_key=:CDBUMON
  has_many :department_hierarchies, :class_name => 'DepartmentHierarchy', :foreign_key => [:CDBUMON]
  has_many :employee_departments, :class_name => 'EmployeeDepartment', :foreign_key => [:CDBUMON]
end
