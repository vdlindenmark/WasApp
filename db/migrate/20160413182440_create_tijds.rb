class CreateTijds < ActiveRecord::Migration
  def change
    create_table :tijds do |t|
      t.datetime :end_datetime
      t.integer :time_id

      t.timestamps null: false
    end
  end
end
