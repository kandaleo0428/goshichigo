class AddaddUserIdToaddposts < ActiveRecord::Migration[6.0]
  def change
    add_column :addposts, :add_user_id, :integer
  end
end
