# == Schema Information
#
# Table name: BT030 # 商品コード
#
#  PD_CODE        :string(5)        not null, primary key
#  PD_NAME        :string(30)       not null              # 商品名
#  PURCHASE_PRICE :integer          default(0), not null  # 購入単価
#  SALES_PRICE    :integer          default(0), not null  # 販売単価
#  PD_UNIT        :string(4)        not null              # 扱い単位
#  UPDCOUNTER     :integer          default(0)
#


class Product < ApplicationRecord
  self.table_name='BT030'
  self.primary_key=:PD_CODE
  has_many :order_details, :class_name => 'OrderDetail', :foreign_key => [:PD_CODE]
end
