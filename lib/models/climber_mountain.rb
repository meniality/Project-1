class ClimberMountain < ActiveRecord::Base
  belongs_to :climber
  belongs_to :mountain
end