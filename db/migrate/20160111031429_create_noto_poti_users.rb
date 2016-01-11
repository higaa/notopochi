class CreateNotoPotiUsers < ActiveRecord::Migration
  def change
    create_table :noto_poti_users do |t|
      t.integer :userId
      t.string :loginName
      t.string :loginPassword
      t.string :name

      t.timestamps null: false
    end
  end
end
