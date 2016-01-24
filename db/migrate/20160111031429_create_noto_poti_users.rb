class CreateNotoPotiUsers < ActiveRecord::Migration
  def change
    create_table :noto_poti_users do |t|
      t.integer :userid
      t.string :loginname
      t.string :loginpassword
      t.string :name

      t.timestamps null: false
    end
  end
end
