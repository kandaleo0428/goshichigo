class AddcreatedAtWarekiToaddposts < ActiveRecord::Migration[6.0]
  def change
    add_column :addposts, :created_at_wareki, :string
  end
end
