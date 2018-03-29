# == Schema Information
#
# Table name: BT020 # 受注No
#
#  OD_NO      :string(20)       not null, primary key
#  CS_CODE    :string(5)        not null              # 顧客コード
#  OD_DATE    :date             not null              # 受注日
#  UPDCOUNTER :integer          default(0)
#

class Order < ApplicationRecord
  self.table_name='BT020'
  self.primary_key=:OD_NO
  has_many :details, :class_name => 'OrderDetail', :foreign_key => [:OD_NO], dependent: :destroy
  belongs_to :customer, :class_name => 'Customer', :foreign_key => [:CS_CODE]
end
