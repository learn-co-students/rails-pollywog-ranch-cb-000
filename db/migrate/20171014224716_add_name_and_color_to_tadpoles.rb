class AddNameAndColorToTadpoles < ActiveRecord::Migration
  def change
    add_column :tadpoles, :name, :string
    add_column :tadpoles, :color, :string 
  end
end
