class OrderDetail < ApplicationRecord
  self.table_name='BT021'
  self.primary_keys=:OD_NO,:OD_LINE_NO
  belongs_to :order, :foreign_key => [:OD_NO,:OD_LINE_NO]
  belongs_to :product, :foreign_key => [:PD_CODE]
end
