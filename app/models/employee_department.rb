class EmployeeDepartment < ApplicationRecord
  self.table_name='AT021'
  self.primary_keys=:NRJYUGYOIN, :DTSYOZOKUNENGETSU
  belongs_to :employee, :foreign_key => [:NRJYUGYOIN, :DTSYOZOKUNENGETSU]
end
