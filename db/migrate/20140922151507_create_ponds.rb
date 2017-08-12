class CreatePonds < ActiveRecord::Migration
  def up
    create_table :ponds do |s|
      s.string :name
      s.string :water_type
    end 
  end
end
