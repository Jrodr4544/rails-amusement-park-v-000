class CreateUsers < ActiveRecord::Migration
  # Write your migrations here
  def change
    create_table :users do |t|
      t.string  :name
      t.integer :height,          default: 5
      t.integer :happiness,       default: 5
      t.integer :nausea,          default: 5
      t.integer :tickets,         default: 5
      t.string  :password_digest  
    end 
  end
end
