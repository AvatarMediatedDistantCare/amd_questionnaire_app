# motionの数
motion_id = (0..7).to_a # motion_index
applying_user_id = (1...120).to_a # amount of users
counter_balance = (0..5).to_a.shuffle # 提示順序の組み合わせ


motion_id.each do |m_id|
  applying_user_id.each do |u_id|
    order_type = counter_balance.pop
    if(order_type == nil)
      counter_balance = (0..2).to_a.shuffle
      order_type = counter_balance.pop
    end
    MotionOrder.create( motion_id: m_id, order_type: order_type, applying_user_id: u_id )
  end
end
