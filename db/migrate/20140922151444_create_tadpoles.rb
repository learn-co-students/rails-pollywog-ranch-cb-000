class CreateTadpoles < ActiveRecord::Migration
  def up
    create_table :tadpoles do |s|
      s.string :name
      s.string :color
      s.integer :frog_id
    end 
  end
end
