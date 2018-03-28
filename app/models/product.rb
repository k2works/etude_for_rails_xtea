class Product < ApplicationRecord
  self.table_name='BT030'
  self.primary_key=:PD_CODE
  has_many :order_details, :class_name => 'OrderDetail', :foreign_key => [:PD_CODE]
end
