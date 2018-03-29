# frozen_string_literal: true
# == Schema Information
#
# Table name: BT020 # 受注No
#
#  OD_NO      :string(20)       not null, primary key
#  CS_CODE    :string(5)        not null              # 顧客コード
#  OD_DATE    :date             not null              # 受注日
#  UPDCOUNTER :integer          default(0)
#


require 'rails_helper'

def setup_ten_orders
  (1..10).each do |n|
    order = build(:order, OD_NO: n.to_s)
    details = []
    details << build(:order_detail, OD_QUANTITY: n * 1)
    details << build(:order_detail, OD_LINE_NO: '2', OD_QUANTITY: n * 2)
    details << build(:order_detail, OD_LINE_NO: '3', OD_QUANTITY: n * 3)
    details.each do |detail|
      order.details.build(detail.attributes)
    end
    order.save!
  end
end

RSpec.describe Order, type: :model do
  before(:each) do
    create(:customer)
    create(:product)
  end

  describe '#create' do
    it 'create order' do
      order = Order.new(
        OD_NO: '1',
        CS_CODE: '1',
        OD_DATE: '2018/03/29'
      )
      order.details.build(
        OD_NO: '1',
        OD_LINE_NO: '1',
        PD_CODE: '1',
        OD_QUANTITY: 1,
        OD_SHIP_DATE: '2018/03/29'
      )

      order.save!

      order = Order.first
      expect(order).not_to be nil
      expect(order.details.first).not_to be nil
    end

    it 'create multi details' do
      order = build(:order)
      details = []
      details << build(:order_detail)
      details << build(:order_detail, OD_LINE_NO: '2')
      details << build(:order_detail, OD_LINE_NO: '3')
      details.each do |detail|
        order.details.build(detail.attributes)
      end
      order.save!

      order = Order.first
      expect(order.details.count).to eq 3
    end
  end

  describe '#read' do
    before(:each) do
      setup_ten_orders
    end

    it 'find composite primary key' do
      order = Order.find('1')
      expect(order.details.third.OD_QUANTITY).to eq 3
      detail = OrderDetail.find(%w[1 3])
      expect(detail.OD_QUANTITY).to eq 3

      order = Order.find('3')
      expect(order.details.second.OD_QUANTITY).to eq 6
      detail = OrderDetail.find(%w[3 2])
      expect(detail.OD_QUANTITY).to eq 6
    end

    it 'select order and details' do
      order = Order.where(OD_NO: '1')
      expect { order.details }.to raise_error(NoMethodError)
      expect(order.first.details.third.OD_QUANTITY).to eq 3

      order = Order.where(OD_NO: '1').includes(:details)
      expect(order.first.details.third.OD_QUANTITY).to eq 3
      detail = OrderDetail.where(OD_NO: '1', OD_LINE_NO: '3')
      expect(detail.first.OD_QUANTITY).to eq 3

      order = Order.where(OD_NO: '3').joins(:details)
      expect(order.first.details.second.OD_QUANTITY).to eq 6
      detail = OrderDetail.where(OD_NO: '3', OD_LINE_NO: '2')
      expect(detail.first.OD_QUANTITY).to eq 6
    end
  end

  describe '#update' do
    before(:each) do
      setup_ten_orders
    end

    it 'update order' do
      order = Order.find('10')
      order.OD_DATE = '2018/03/01'
      order.save!

      order = Order.find('10')
      expect(order.OD_DATE).to eq Date.new(2018, 3, 1)

      order = Order.find('10')
      order.update(OD_DATE: '2018/01/01')

      order = Order.find('10')
      expect(order.OD_DATE).to eq Date.new(2018, 1, 1)
    end

    it 'update detail' do
      detail = OrderDetail.find(%w[10 3])
      detail.OD_QUANTITY = 3
      detail.save!

      order = Order.find('10')
      expect(order.details.third.OD_QUANTITY).to eq 3

      order = Order.find('5')
      order.details.third.OD_QUANTITY = 0

      order = Order.find('5')
      expect(order.details.third.OD_QUANTITY).not_to eq 0

      order = Order.find('5')
      order.details.third.update(OD_QUANTITY: 0)

      order = Order.find('5')
      expect(order.details.third.OD_QUANTITY).to eq 0
    end
  end

  describe '#delete' do
    before(:each) do
      setup_ten_orders
    end

    it 'destroy order' do
      order = Order.find(5)
      order.destroy
      expect(Order.count).to eq 9
      expect(OrderDetail.count).to eq 27

      order = Order.find(7)
      order.delete
      expect(Order.count).to eq 8
      expect(OrderDetail.count).not_to eq 24

      Order.destroy_all
      expect(Order.count).to eq 0
      expect(OrderDetail.count).not_to eq 0
    end

    it 'destroy detail' do
      order = Order.find(5)
      order.details.first.destroy
      expect(Order.count).to eq 10
      expect(OrderDetail.count).to eq 29

      order = Order.find(7)
      order.details.each(&:delete)

      expect(Order.count).to eq 10
      expect(OrderDetail.count).to eq 26

      order = Order.find(8)
      order.details.each(&:destroy)

      expect(Order.count).to eq 10
      expect(OrderDetail.count).to eq 23

      OrderDetail.destroy_all
      expect(OrderDetail.count).to eq 0
    end
  end
end
