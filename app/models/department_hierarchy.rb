# == Schema Information
#
# Table name: AT011
#
#  CDBUMON          :string(5)        not null, primary key # 部門Ｃ
#  DTHAKKOUNENGETSU :string(6)        not null, primary key # 発効年月
#  CDJYOUIBUMON     :string(5)        not null              # 上位部門Ｃ
#  DTSIKKOUNENGETSU :string(6)        not null              # 失効年月
#  UPDCOUNTER       :integer          default(0)
#

class DepartmentHierarchy < ApplicationRecord
  self.table_name='AT011'
  self.primary_keys=:CDBUMON, :DTHAKKOUNENGETSU
  belongs_to :department, :foreign_key => [:CDBUMON ,:DTHAKKOUNENGETSU], optional: true
end
