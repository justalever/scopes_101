class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :status
      t.string :title

      t.timestamps
    end
  end
end
