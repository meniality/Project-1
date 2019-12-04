class Mountain < ActiveRecord::Base
  has_many :climber_mountains
  has_many :climbers, through: :climber_mountains
end