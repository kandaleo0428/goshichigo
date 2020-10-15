class AddColumnsTwoToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :content_one, :string
  end
end
