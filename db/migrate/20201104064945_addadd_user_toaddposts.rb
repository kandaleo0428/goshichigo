class AddaddUserToaddposts < ActiveRecord::Migration[6.0]
  def change
    add_column :addposts, :add_user, :string
  end
end
