# == Schema Information
#
# Table name: AT021
#
#  NRJYUGYOIN        :string(5)        not null, primary key # 従業員№
#  DTSYOZOKUNENGETSU :string(6)        not null, primary key # 所属開始年月
#  CDBUMON           :string(5)        not null              # 部門Ｃ
#  UPDCOUNTER        :integer          default(0)
#

class EmployeeDepartment < ApplicationRecord
  self.table_name='AT021'
  self.primary_keys=:NRJYUGYOIN, :DTSYOZOKUNENGETSU
  belongs_to :employee, :foreign_key => [:NRJYUGYOIN, :DTSYOZOKUNENGETSU]
  belongs_to :department, :foreign_key => [:CDBUMON]
end
