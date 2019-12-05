class Gear < ActiveRecord::Base
    has_many :climbers, through: :climber_gears
    has_many :climber
end