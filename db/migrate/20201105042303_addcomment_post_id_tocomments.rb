class AddcommentPostIdTocomments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :comment_post_id, :integer
  end
end
