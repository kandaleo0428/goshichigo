class Addcontent3Toaddposts < ActiveRecord::Migration[6.0]
  def change
    add_column :addposts, :content3, :string
  end
end
