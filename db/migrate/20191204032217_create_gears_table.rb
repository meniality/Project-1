class CreateGearsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :gears do |t|
      t.string :name
    end  
  end
end
