# motionの数
motion_id = (0..7).to_a # motion_index
applying_user_group = (0...30).to_a # amount of users
counter_balance = (0..5).to_a.shuffle # 提示順序の組み合わせ
user_index = (1..6).to_a

applying_user_group.each do |group_id|
  motion_id.each do |m_id|
    counter_balance = (0..5).to_a.shuffle # 提示順序の組み合わせ
    user_index.each do |u_idx|
      MotionOrder.create( motion_id: m_id, order_type: counter_balance.pop, applying_user_id: u_idx + group_id*6 )
    end
  end
end

