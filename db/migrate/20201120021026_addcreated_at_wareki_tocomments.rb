class AddcreatedAtWarekiTocomments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :created_at_wareki, :string
  end
end
