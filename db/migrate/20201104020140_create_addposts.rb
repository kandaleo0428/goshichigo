class CreateAddposts < ActiveRecord::Migration[6.0]
  def change
    create_table :addposts do |t|
      t.string :content4
      t.string :content5
      t.string :addmessage
      t.integer :add_user_id

      t.timestamps
    end
  end
end
