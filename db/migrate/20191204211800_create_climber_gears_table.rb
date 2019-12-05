class CreateClimberGearsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :climber_gears do |t|
      t.references :climber, foreign_key: true
      t.references :gear, foreign_key: true
    end  
  end
end
