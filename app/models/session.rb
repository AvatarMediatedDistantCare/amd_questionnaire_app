class Session < ApplicationRecord
  has_many :answers
  belongs_to :user

  def start_id
    start_id = Answer.where("session_id = ? and prev_id is ?", self.id, nil).first.id
  end
end
