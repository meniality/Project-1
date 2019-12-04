class CreateClimbermountainsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :climber_mountains do |t|
      t.references :climber, foreign_key: true
      t.references :mountain, foreign_key: true
    end
  end
end
