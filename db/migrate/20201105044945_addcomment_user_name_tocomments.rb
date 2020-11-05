class AddcommentUserNameTocomments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :comment_user_name, :string
  end
end
