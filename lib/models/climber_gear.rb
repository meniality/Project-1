class ClimberGear < ActiveRecord::Base
    belongs_to :climber
    belongs_to :gear
end