class CreateUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :urls do |t|
      t.string :link
      t.string :slug
      t.string :user_id
      t.timestamps
    end
  end
end
