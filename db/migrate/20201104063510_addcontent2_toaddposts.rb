class Addcontent2Toaddposts < ActiveRecord::Migration[6.0]
  def change
    add_column :addposts, :content2, :string
  end
end
