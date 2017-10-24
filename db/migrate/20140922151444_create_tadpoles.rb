class CreateTadpoles < ActiveRecord::Migration
  create_table :tadpoles do |t|
    t.integer :frog_id
    t.timestamps 
  end
end
