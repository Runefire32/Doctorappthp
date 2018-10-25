class Mod1 < ActiveRecord::Migration[5.2]
  def change
  	remove_column :doctors, :speciality, :boolean
   	remove_column :doctors, :postal_code, :boolean
   	
  end

end
