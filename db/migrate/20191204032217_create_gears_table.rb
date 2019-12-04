class CreateGearsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :gears do |t|
      t.string :type
      t.references :climber, foreign_key: true
    end  
  end
end
