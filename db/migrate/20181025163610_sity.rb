class Sity < ActiveRecord::Migration[5.2]
  def change
  
  	remove_column :patients, :city , :boolean

  end
end
