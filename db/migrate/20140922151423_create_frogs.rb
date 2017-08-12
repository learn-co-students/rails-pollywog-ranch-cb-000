class CreateFrogs < ActiveRecord::Migration
  def up
    create_table :frogs do |s|
      s.string :name
      s.string :color
      s.integer :pond_id
    end 
  end
end
