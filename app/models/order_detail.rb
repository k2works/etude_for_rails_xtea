# == Schema Information
#
# Table name: BT021
#
#  OD_NO        :string(20)       not null, primary key # 受注No
#  OD_LINE_NO   :string(20)       not null, primary key # 行番号
#  PD_CODE      :string(5)        not null              # 商品コード
#  OD_QUANTITY  :integer          default(0), not null  # 受注数
#  OD_SHIP_DATE :date             not null              # 出荷日
#  UPDCOUNTER   :integer          default(0)
#

class OrderDetail < ApplicationRecord
  self.table_name='BT021'
  self.primary_keys=:OD_NO,:OD_LINE_NO
  belongs_to :order, :foreign_key => [:OD_NO], optional: true
  belongs_to :product, :foreign_key => [:PD_CODE]
end
