class Mod2 < ActiveRecord::Migration[5.2]
  def change
   add_column :specialities	, :name, :string
   add_reference  :patients, :city, foreign_key: true
   
  end
end
