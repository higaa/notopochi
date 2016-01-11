class CreateNotoPotiData < ActiveRecord::Migration
  def change
    create_table :noto_poti_data do |t|
      t.integer :potiDataID
      t.integer :UserID
      t.string :startPositionName
      t.string :endPositionName
      t.string :comment
      t.string :startPicturePath
      t.string :endPicturePath
      t.datetime :startDateTime
      t.datetime :endDateTime
      t.boolean :potiCommit

      t.timestamps null: false
    end
  end
end
