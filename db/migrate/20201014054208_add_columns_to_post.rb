class AddColumnsToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :content1, :string
    add_column :posts, :content2, :string
    add_column :posts, :content3, :string
    add_column :posts, :message, :string
  end
end
