class CreateNotoPotiData < ActiveRecord::Migration
  def change
    create_table :noto_poti_data do |t|
      t.integer :potidataid
      t.integer :userid
      t.string :startpositionname
      t.string :endpositionname
      t.string :comment
      t.string :startpicturepath
      t.string :endpicturepath
      t.datetime :startdatetime
      t.datetime :enddatetime
      t.boolean :poticommit

      t.timestamps null: false
    end
  end
end
