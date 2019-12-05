class Climber < ActiveRecord::Base
  has_many :climber_mountains
  has_many :mountains, through: :climber_mountains
  has_many :climber_gears
  has_many :gears, through: :climber_gears
  has_many :gears
  has_many :sent_messages, class_name: "Messages", foreign_key: :sender_id
  has_many :received_messages, class_name: "Messages", foreign_key: :receiver_id
end