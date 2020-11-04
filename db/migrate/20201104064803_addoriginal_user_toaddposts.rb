class AddoriginalUserToaddposts < ActiveRecord::Migration[6.0]
  def change
    add_column :addposts, :original_user, :string
  end
end
