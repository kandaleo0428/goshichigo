class AddcreatedAtWarekiToposts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :created_at_wareki, :string
  end
end
