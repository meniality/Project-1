class Climber < ActiveRecord::Base
  has_many :climber_mountains
  has_many :mountains, through: :climber_mountains
  has_many :climber_gears
  has_many :gears, through: :climber_gears
end