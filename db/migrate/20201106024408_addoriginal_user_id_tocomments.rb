class AddoriginalUserIdTocomments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :original_user_id, :integer
  end
end
