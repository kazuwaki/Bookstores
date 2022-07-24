class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|

      t.timestamps
      t.text :message
      t.integer :user_id
      t.integer :book_id
    end
  end
end
