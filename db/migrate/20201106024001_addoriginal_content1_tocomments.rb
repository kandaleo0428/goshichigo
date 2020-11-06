class AddoriginalContent1Tocomments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :original_content1, :string
  end
end
