class Climber < ActiveRecord::Base
  has_many :climber_mountains
  has_many :mountains, through: :climber_mountains
  has_many :gears
end