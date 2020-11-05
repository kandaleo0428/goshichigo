class RemoveaddUserIdFromaddposts < ActiveRecord::Migration[6.0]
  def change
    remove_column :addposts, :add_user_id
  end
end
