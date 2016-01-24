class CreateNotoPotiDatumDetails < ActiveRecord::Migration
  def change
    create_table :noto_poti_datum_details do |t|
      t.integer :potidataid
      t.string :startposition
      t.string :endposition
      t.integer :potidataseqnum

      t.timestamps null: false
    end
  end
end
