# == Schema Information
#
# Table name: AT020 # 従業員№
#
#  NRJYUGYOIN :string(5)        not null, primary key
#  TXKANA     :string(30)       not null              # カナ名
#  TXKANJI    :string(30)       not null              # 漢字名
#  KBKOYOU    :string(5)        not null              # 雇用区分
#  DTNYUSYA   :date             not null              # 入社日
#  DTTAISYA   :date                                   # 退社日
#  UPDCOUNTER :integer          default(0)
#


class Employee < ApplicationRecord
  self.table_name='AT020'
  self.primary_key=:NRJYUGYOIN
  has_many :employee_departments, :class_name => 'EmployeeDepartment', :foreign_key => [:NRJYUGYOIN], dependent: :destroy
end
