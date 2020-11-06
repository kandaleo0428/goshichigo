class AddoriginalContent2Tocomments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :original_content2, :string
  end
end
