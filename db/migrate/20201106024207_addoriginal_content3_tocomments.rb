class AddoriginalContent3Tocomments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :original_content3, :string
  end
end
