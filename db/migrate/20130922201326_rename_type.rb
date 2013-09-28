class RenameType < ActiveRecord::Migration
  def change
  	change_table :damages do |t|
  		t.rename :type, :category
  	end 
  end
end
