# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
motion_id = (0...8).to_a
applying_user_type = (0...6).to_a

motion_id.each do |m_id|
  order_type = (0...6).to_a.shuffle
  order_type.each_with_index do |o_id, index|
    MotionOrder.create( motion_id: m_id, order_type: o_id, applying_user_type: applying_user_type[index] )
  end
end

