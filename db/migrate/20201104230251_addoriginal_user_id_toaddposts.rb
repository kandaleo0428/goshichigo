class AddoriginalUserIdToaddposts < ActiveRecord::Migration[6.0]
  def change
    add_column :addposts, :original_user_id, :integer
  end
end
