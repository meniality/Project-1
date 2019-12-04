class CreateClimbersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :climbers do |t|
      t.string :name
      t.string :password
      t.integer :age
      t.string :location
      t.string :email
      t.string :phone_number
    end
  end
end
