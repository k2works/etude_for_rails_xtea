class Order < ApplicationRecord
  self.table_name='BT020'
  self.primary_key=:OD_NO
  has_many :details, :class_name => 'OrderDetail', :foreign_key => [:OD_NO]
end
