class Messages < ActiveRecord::Base
  belongs_to :sender, class_name: 'Climber', foreign_key: :sender_id
  belongs_to :receiver, class_name: 'Climber', foreign_key: :receiver_id
end