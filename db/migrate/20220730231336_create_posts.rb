class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|

      t.string :name
      t.string :body
      t.integer :type_id
      t.integer :liqueur_id
      t.timestamps
    end
  end
end
