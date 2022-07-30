class CreateLiqueurs < ActiveRecord::Migration[6.1]
  def change
    create_table :liqueurs do |t|

      t.string :name
      t.timestamps
    end
  end
end
