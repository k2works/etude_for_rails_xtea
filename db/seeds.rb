# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'factory_bot'

FactoryBot.create(:customer)
FactoryBot.create(:product)

(1..10).each do |n|
  order = FactoryBot.build(:order, OD_NO: n.to_s)
  details = []
  details << FactoryBot.build(:order_detail, OD_QUANTITY: n * 1)
  details << FactoryBot.build(:order_detail, OD_LINE_NO: '2', OD_QUANTITY: n * 2)
  details << FactoryBot.build(:order_detail, OD_LINE_NO: '3', OD_QUANTITY: n * 3)
  details.each do |detail|
    order.details.build(detail.attributes)
  end
  order.save!
end
