# == Schema Information
#
# Table name: BT010 # 顧客コード
#
#  CS_CODE    :string(20)       not null, primary key
#  CS_NAME    :string(30)       not null              # 顧客名
#  CS_CREDIT  :integer          default(0), not null  # 与信限度額
#  UPDCOUNTER :integer          default(0)
#


class Customer < ApplicationRecord
  self.table_name='BT010'
  self.primary_key=:CS_CODE
  has_many :orders, :class_name => 'Order', :foreign_key => [:CS_CODE]
end
