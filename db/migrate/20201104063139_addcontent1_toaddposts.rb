class Addcontent1Toaddposts < ActiveRecord::Migration[6.0]
  def change
    add_column :addposts, :content1, :string
    
  end
end
