class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|

      t.timestamps
      t.integer :booktype, null: false, default: 0
    end
  end
end
