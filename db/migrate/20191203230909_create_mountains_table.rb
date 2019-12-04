class CreateMountainsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :mountains do |t|
    t.string :name
    t.integer :height
    t.integer :easy_climbs
    t.integer :medium_climbs
    t.integer :hard_climbs
    end
  end
end
