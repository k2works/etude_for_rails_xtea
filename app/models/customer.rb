class Customer < ApplicationRecord
  self.table_name='BT010'
  self.primary_key=:CS_CODE
  has_many :orders, :class_name => 'Order', :foreign_key => [:CS_CODE]
end
