class DepartmentHierarchy < ApplicationRecord
  self.table_name='AT011'
  self.primary_keys=:CDBUMON, :DTHAKKOUNENGETSU
  belongs_to :department, :foreign_key => [:CDBUMON ,:DTHAKKOUNENGETSU]
end
